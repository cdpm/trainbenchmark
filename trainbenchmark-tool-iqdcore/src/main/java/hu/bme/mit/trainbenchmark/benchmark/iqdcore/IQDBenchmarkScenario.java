package hu.bme.mit.trainbenchmark.benchmark.iqdcore;

import java.util.Comparator;

import hu.bme.mit.incqueryds.WildcardInput;
import hu.bme.mit.trainbenchmark.benchmark.iqdcore.config.IQDBenchmarkConfigWrapper;
import hu.bme.mit.trainbenchmark.benchmark.iqdcore.driver.IQDCoreDriver;
import hu.bme.mit.trainbenchmark.benchmark.iqdcore.match.IQDCoreMatch;
import hu.bme.mit.trainbenchmark.benchmark.iqdcore.match.IQDCoreMatchComparator;
import hu.bme.mit.trainbenchmark.benchmark.iqdcore.operations.IQDModelOperationFactory;
import hu.bme.mit.trainbenchmark.benchmark.operations.ModelOperationFactory;
import hu.bme.mit.trainbenchmark.benchmark.phases.BenchmarkScenario;

/**
 * Created by wafle on 6/15/16.
 */
public class IQDBenchmarkScenario extends BenchmarkScenario<IQDCoreMatch, IQDCoreDriver, IQDBenchmarkConfigWrapper> {
	public IQDBenchmarkScenario(IQDCoreDriver driver, ModelOperationFactory<IQDCoreMatch, IQDCoreDriver> factory,
			Comparator<IQDCoreMatch> comparator, IQDBenchmarkConfigWrapper bcw) throws Exception {
		super(driver, factory, comparator, bcw);
	}

	public static IQDBenchmarkScenario create(IQDBenchmarkConfigWrapper config) throws Exception {
		final WildcardInput input = new WildcardInput(16);
		final IQDCoreDriver driver = new IQDCoreDriver(config.getQueryVariant(), input);
		final IQDModelOperationFactory factory = new IQDModelOperationFactory(input);
		return new IQDBenchmarkScenario(driver, factory, IQDCoreMatchComparator.create(), config);

	}
}
