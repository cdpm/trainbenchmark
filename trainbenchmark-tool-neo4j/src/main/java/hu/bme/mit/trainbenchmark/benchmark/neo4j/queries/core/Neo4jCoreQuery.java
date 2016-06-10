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
package hu.bme.mit.trainbenchmark.benchmark.neo4j.queries.core;

import hu.bme.mit.trainbenchmark.benchmark.neo4j.driver.Neo4jDriver;
import hu.bme.mit.trainbenchmark.benchmark.neo4j.matches.Neo4jMatch;
import hu.bme.mit.trainbenchmark.benchmark.operations.ModelQuery;
import hu.bme.mit.trainbenchmark.constants.RailwayQuery;

public abstract class Neo4jCoreQuery<TMatch extends Neo4jMatch> extends ModelQuery<TMatch, Neo4jDriver> {

	public Neo4jCoreQuery(final RailwayQuery query, final Neo4jDriver driver) {
		super(query, driver);
	}

	public static Neo4jCoreQuery<?> newInstance(final RailwayQuery query, final Neo4jDriver driver) {
		switch (query) {
		case CONNECTEDSEGMENTS:
			return new Neo4jCoreQueryConnectedSegments(driver);
		case POSLENGTH:
			return new Neo4jCoreQueryPosLength(driver);
		case ROUTESENSOR:
			return new Neo4jCoreQueryRouteSensor(driver);
		case SEMAPHORENEIGHBOR:
			return new Neo4jCoreQuerySemaphoreNeighbor(driver);
		case SWITCHMONITORED:
			return new Neo4jCoreQuerySwitchMonitored(driver);
		case SWITCHSET:
			return new Neo4jCoreQuerySwitchSet(driver);
		default:
			throw new UnsupportedOperationException("Query " + query + " not supported");
		}
	}

}