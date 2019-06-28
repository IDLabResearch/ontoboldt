#!/usr/bin/env bash
graphy content.ttl.read --pipe util.dataset.tree --union --pipe content.ttl.write --inputs ../ontoboldt-provenance.ttl ontoboldt.ttl > ../docs/ns/ontoboldt/ontoboldt.ttl
