/*******************************************************************************
 * Copyright (c) 2010-2014, Benedek Izso, Gabor Szarnyas, Istvan Rath and Daniel Varro
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *   Benedek Izso - initial API and implementation
 *   Gabor Szarnyas - initial API and implementation
 *******************************************************************************/

package hu.bme.mit.trainbenchmark.benchmark.virtuoso.test;

import hu.bme.mit.trainbenchmark.benchmark.test.TestBenchmarkInitializer;
import hu.bme.mit.trainbenchmark.benchmark.virtuoso.VirtuosoBenchmarkLogic;
import hu.bme.mit.trainbenchmark.constants.Scenario;
import hu.bme.mit.trainbenchmark.rdf.RDFBenchmarkConfig;

public class VirtuosoBenchmarkInitializer extends TestBenchmarkInitializer<VirtuosoBenchmarkLogic> {

	@Override
	protected VirtuosoBenchmarkLogic initializeBenchmark(final String queryName, final Scenario scenario) {
		final RDFBenchmarkConfig rbc = new RDFBenchmarkConfig(scenario, size, "Virtuoso", runIndex, queryName,
				iterationCount, modificationMethod, modificationConstant);
		return new VirtuosoBenchmarkLogic(rbc);
	}

}
