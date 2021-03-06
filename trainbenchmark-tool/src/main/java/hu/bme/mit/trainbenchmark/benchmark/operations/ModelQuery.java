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
package hu.bme.mit.trainbenchmark.benchmark.operations;

import java.util.Collection;

import hu.bme.mit.trainbenchmark.benchmark.driver.Driver;
import hu.bme.mit.trainbenchmark.constants.RailwayQuery;

public abstract class ModelQuery<TPatternMatch, TDriver extends Driver> implements AutoCloseable {

	protected final RailwayQuery query;
	protected final TDriver driver;

	public ModelQuery(final RailwayQuery query, final TDriver driver) {
		this.query = query;
		this.driver = driver;
	}

	public abstract Collection<TPatternMatch> evaluate() throws Exception;

	@Override
	public void close() {
	}

	public TDriver getDriver() {
		return driver;
	}
	
	public RailwayQuery getQuery() {
		return query;
	}

}
