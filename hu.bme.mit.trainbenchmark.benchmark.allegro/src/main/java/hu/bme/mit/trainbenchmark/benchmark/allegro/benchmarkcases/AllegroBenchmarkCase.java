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

package hu.bme.mit.trainbenchmark.benchmark.allegro.benchmarkcases;

import hu.bme.mit.trainbenchmark.benchmark.sesame.SesameBenchmarkCase;
import hu.bme.mit.trainbenchmark.rdf.RDFBenchmarkConfig;

import java.io.IOException;
import java.util.Collection;

import org.openrdf.model.URI;

public class AllegroBenchmarkCase extends SesameBenchmarkCase {

	protected RDFBenchmarkConfig rdfConfig;

	public String getResourceDirectory() {
		return bc.getWorkspacePath() + "/hu.bme.mit.trainbenchmark.rdf/src/main/resources/";
	}

	
	
	@Override
	protected void read() throws IOException {
		driver.read(bc.getModelPathNameWithoutExtension() + ".ttl");		
	}

	@Override
	protected Collection<URI> check() throws IOException {
		matches = driver.runQuery();
		return matches;
	}

}
