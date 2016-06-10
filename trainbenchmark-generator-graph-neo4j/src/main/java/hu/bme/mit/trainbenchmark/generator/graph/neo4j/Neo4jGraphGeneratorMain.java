/*******************************************************************************
 * Copyright (c) 2010-2015, Benedek Izso, Gabor Szarnyas, Istvan Rath and Daniel Varro
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *   Benedek Izso - initial API and implementation
 *   Gabor Szarnyas - initial API and implementation
 *******************************************************************************/

package hu.bme.mit.trainbenchmark.generator.graph.neo4j;

import hu.bme.mit.trainbenchmark.generator.GeneratorFactory;
import hu.bme.mit.trainbenchmark.generator.ModelGenerator;
import hu.bme.mit.trainbenchmark.generator.config.GeneratorConfigWrapper;

public class Neo4jGraphGeneratorMain {

	public static void main(final String[] args) throws Exception {
		final GeneratorConfigWrapper generatorConfigWrapper = GeneratorConfigWrapper.fromFile(args[0]);
		final Neo4jGraphSerializer rdfSerializer = new Neo4jGraphSerializer(generatorConfigWrapper);
		final ModelGenerator generator = GeneratorFactory.createGenerator(rdfSerializer, generatorConfigWrapper);
		generator.generateModel();
	}

}
