{
  // new returns an instance of Event
  new(name): {
    apiVersion: 'events.k8s.io/v1beta1',
    kind: 'Event'
  } + self.metadata.withName(name=name),
  // EventSource contains information for an event.
  deprecatedSource: {
    withComponent(component): { deprecatedSource+: { component: component } },
    withHost(host): { deprecatedSource+: { host: host } }
  },
  // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
  metadata: {
    withAnnotations(annotations): { metadata+: { annotations: annotations } },
    withAnnotationsMixin(annotations): { metadata+: { annotations+: annotations } },
    withClusterName(clusterName): { metadata+: { clusterName: clusterName } },
    withCreationTimestamp(creationTimestamp): { metadata+: { creationTimestamp: creationTimestamp } },
    withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } },
    withDeletionTimestamp(deletionTimestamp): { metadata+: { deletionTimestamp: deletionTimestamp } },
    withFinalizers(finalizers): { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    withFinalizersMixin(finalizers): { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    withGenerateName(generateName): { metadata+: { generateName: generateName } },
    withGeneration(generation): { metadata+: { generation: generation } },
    withLabels(labels): { metadata+: { labels: labels } },
    withLabelsMixin(labels): { metadata+: { labels+: labels } },
    withManagedFields(managedFields): { metadata+: { managedFields: if std.isArray(v=managedFields) then managedFields else [managedFields] } },
    withManagedFieldsMixin(managedFields): { metadata+: { managedFields+: if std.isArray(v=managedFields) then managedFields else [managedFields] } },
    withName(name): { metadata+: { name: name } },
    withNamespace(namespace): { metadata+: { namespace: namespace } },
    withOwnerReferences(ownerReferences): { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    withOwnerReferencesMixin(ownerReferences): { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    withResourceVersion(resourceVersion): { metadata+: { resourceVersion: resourceVersion } },
    withSelfLink(selfLink): { metadata+: { selfLink: selfLink } },
    withUid(uid): { metadata+: { uid: uid } }
  },
  // ObjectReference contains enough information to let you inspect or modify the referred object.
  regarding: {
    withFieldPath(fieldPath): { regarding+: { fieldPath: fieldPath } },
    withKind(kind): { regarding+: { kind: kind } },
    withName(name): { regarding+: { name: name } },
    withNamespace(namespace): { regarding+: { namespace: namespace } },
    withResourceVersion(resourceVersion): { regarding+: { resourceVersion: resourceVersion } },
    withUid(uid): { regarding+: { uid: uid } }
  },
  // ObjectReference contains enough information to let you inspect or modify the referred object.
  related: {
    withFieldPath(fieldPath): { related+: { fieldPath: fieldPath } },
    withKind(kind): { related+: { kind: kind } },
    withName(name): { related+: { name: name } },
    withNamespace(namespace): { related+: { namespace: namespace } },
    withResourceVersion(resourceVersion): { related+: { resourceVersion: resourceVersion } },
    withUid(uid): { related+: { uid: uid } }
  },
  // EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
  series: {
    withCount(count): { series+: { count: count } },
    withLastObservedTime(lastObservedTime): { series+: { lastObservedTime: lastObservedTime } },
    withState(state): { series+: { state: state } }
  },
  withAction(action): { action: action },
  withDeprecatedCount(deprecatedCount): { deprecatedCount: deprecatedCount },
  withDeprecatedFirstTimestamp(deprecatedFirstTimestamp): { deprecatedFirstTimestamp: deprecatedFirstTimestamp },
  withDeprecatedLastTimestamp(deprecatedLastTimestamp): { deprecatedLastTimestamp: deprecatedLastTimestamp },
  withEventTime(eventTime): { eventTime: eventTime },
  withNote(note): { note: note },
  withReason(reason): { reason: reason },
  withReportingController(reportingController): { reportingController: reportingController },
  withReportingInstance(reportingInstance): { reportingInstance: reportingInstance },
  withType(type): { type: type },
  mixin: self
}