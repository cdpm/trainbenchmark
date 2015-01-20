package hu.bme.mit.trainbenchmark.benchmark.fourstore.benchmarkcases.user;

import hu.bme.mit.trainbenchmark.benchmark.benchmarkcases.TransformationBenchmarkCase;
import hu.bme.mit.trainbenchmark.benchmark.fourstore.benchmarkcases.SwitchSensor;
import hu.bme.mit.trainbenchmark.benchmark.util.Util;
import hu.bme.mit.trainbenchmark.constants.ModelConstants;

import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.Random;

import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.Multimap;

public class SwitchSensorUser extends SwitchSensor implements TransformationBenchmarkCase {

	@Override
	public void modify() throws IOException {
		final int nElemToModify = Util.calcModify(bc, bc.getModificationConstant(), bmr);
		bmr.addModifyParams(nElemToModify);

		// start the modification
		final long start = System.nanoTime();

		final List<Long> switches = driver.collectVertices(ModelConstants.SWITCH);
		final Multimap<Long, Long> switchesWithEdges = driver.collectEdges(ModelConstants.TRACKELEMENT_SENSOR);

		final Random random = bmr.getRandom();
		final Multimap<Long, Long> edgesToRemove = ArrayListMultimap.create();

		for (int i = 0; i < nElemToModify; i++) {
			final int rndTarget = random.nextInt(switches.size());
			final Long aSwitch = switches.get(rndTarget);
			final Collection<Long> edges = switchesWithEdges.get(aSwitch);
			edgesToRemove.putAll(aSwitch, edges);
		}

		// edit
		final long startEdit = System.nanoTime();
		driver.deleteEdges(edgesToRemove, ModelConstants.TRACKELEMENT_SENSOR);
		
		final long end = System.nanoTime();
		bmr.addEditTime(end - startEdit);
		bmr.addModificationTime(end - start);

	}

}
