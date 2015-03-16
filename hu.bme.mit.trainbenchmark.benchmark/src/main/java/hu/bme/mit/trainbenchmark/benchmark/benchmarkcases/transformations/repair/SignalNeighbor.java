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
package hu.bme.mit.trainbenchmark.benchmark.benchmarkcases.transformations.repair;

import static hu.bme.mit.trainbenchmark.constants.ModelConstants.ROUTE;
import static hu.bme.mit.trainbenchmark.constants.ModelConstants.ROUTE_EXIT;
import hu.bme.mit.trainbenchmark.benchmark.benchmarkcases.transformations.TransformationDefinition;

import java.io.IOException;

public class SignalNeighbor<T> extends TransformationDefinition<T> {

	@Override
	protected void lhs() throws IOException {
		elementCandidates = currentResults;
	}

	@Override
	protected void rhs() throws IOException {
		driver.deleteSingleOutgoingEdge(elementsToModify, ROUTE, ROUTE_EXIT);
	}

}
