/**
 */
package hu.bme.mit.trainbenchmark.schedule.util;

import hu.bme.mit.trainbenchmark.schedule.*;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;

import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * The <b>Adapter Factory</b> for the model.
 * It provides an adapter <code>createXXX</code> method for each class of the model.
 * <!-- end-user-doc -->
 * @see hu.bme.mit.trainbenchmark.schedule.SchedulePackage
 * @generated
 */
public class ScheduleAdapterFactory extends AdapterFactoryImpl {
        /**
         * The cached model package.
         * <!-- begin-user-doc -->
         * <!-- end-user-doc -->
         * @generated
         */
        protected static SchedulePackage modelPackage;

        /**
         * Creates an instance of the adapter factory.
         * <!-- begin-user-doc -->
         * <!-- end-user-doc -->
         * @generated
         */
        public ScheduleAdapterFactory() {
                if (modelPackage == null) {
                        modelPackage = SchedulePackage.eINSTANCE;
                }
        }

        /**
         * Returns whether this factory is applicable for the type of the object.
         * <!-- begin-user-doc -->
         * This implementation returns <code>true</code> if the object is either the model's package or is an instance object of the model.
         * <!-- end-user-doc -->
         * @return whether this factory is applicable for the type of the object.
         * @generated
         */
        @Override
        public boolean isFactoryForType(Object object) {
                if (object == modelPackage) {
                        return true;
                }
                if (object instanceof EObject) {
                        return ((EObject)object).eClass().getEPackage() == modelPackage;
                }
                return false;
        }

        /**
         * The switch that delegates to the <code>createXXX</code> methods.
         * <!-- begin-user-doc -->
         * <!-- end-user-doc -->
         * @generated
         */
        protected ScheduleSwitch<Adapter> modelSwitch =
                new ScheduleSwitch<Adapter>() {
                        @Override
                        public Adapter caseScheduleContainer(ScheduleContainer object) {
                                return createScheduleContainerAdapter();
                        }
                        @Override
                        public Adapter caseSchedule(Schedule object) {
                                return createScheduleAdapter();
                        }
                        @Override
                        public Adapter caseStation(Station object) {
                                return createStationAdapter();
                        }
                        @Override
                        public Adapter caseAssociation(Association object) {
                                return createAssociationAdapter();
                        }
                        @Override
                        public Adapter defaultCase(EObject object) {
                                return createEObjectAdapter();
                        }
                };

        /**
         * Creates an adapter for the <code>target</code>.
         * <!-- begin-user-doc -->
         * <!-- end-user-doc -->
         * @param target the object to adapt.
         * @return the adapter for the <code>target</code>.
         * @generated
         */
        @Override
        public Adapter createAdapter(Notifier target) {
                return modelSwitch.doSwitch((EObject)target);
        }


        /**
         * Creates a new adapter for an object of class '{@link hu.bme.mit.trainbenchmark.schedule.ScheduleContainer <em>Container</em>}'.
         * <!-- begin-user-doc -->
         * This default implementation returns null so that we can easily ignore cases;
         * it's useful to ignore a case when inheritance will catch all the cases anyway.
         * <!-- end-user-doc -->
         * @return the new adapter.
         * @see hu.bme.mit.trainbenchmark.schedule.ScheduleContainer
         * @generated
         */
        public Adapter createScheduleContainerAdapter() {
                return null;
        }

        /**
         * Creates a new adapter for an object of class '{@link hu.bme.mit.trainbenchmark.schedule.Schedule <em>Schedule</em>}'.
         * <!-- begin-user-doc -->
         * This default implementation returns null so that we can easily ignore cases;
         * it's useful to ignore a case when inheritance will catch all the cases anyway.
         * <!-- end-user-doc -->
         * @return the new adapter.
         * @see hu.bme.mit.trainbenchmark.schedule.Schedule
         * @generated
         */
        public Adapter createScheduleAdapter() {
                return null;
        }

        /**
         * Creates a new adapter for an object of class '{@link hu.bme.mit.trainbenchmark.schedule.Station <em>Station</em>}'.
         * <!-- begin-user-doc -->
         * This default implementation returns null so that we can easily ignore cases;
         * it's useful to ignore a case when inheritance will catch all the cases anyway.
         * <!-- end-user-doc -->
         * @return the new adapter.
         * @see hu.bme.mit.trainbenchmark.schedule.Station
         * @generated
         */
        public Adapter createStationAdapter() {
                return null;
        }

        /**
         * Creates a new adapter for an object of class '{@link hu.bme.mit.trainbenchmark.schedule.Association <em>Association</em>}'.
         * <!-- begin-user-doc -->
         * This default implementation returns null so that we can easily ignore cases;
         * it's useful to ignore a case when inheritance will catch all the cases anyway.
         * <!-- end-user-doc -->
         * @return the new adapter.
         * @see hu.bme.mit.trainbenchmark.schedule.Association
         * @generated
         */
        public Adapter createAssociationAdapter() {
                return null;
        }

        /**
         * Creates a new adapter for the default case.
         * <!-- begin-user-doc -->
         * This default implementation returns null.
         * <!-- end-user-doc -->
         * @return the new adapter.
         * @generated
         */
        public Adapter createEObjectAdapter() {
                return null;
        }

} //ScheduleAdapterFactory
