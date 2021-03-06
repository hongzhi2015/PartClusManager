////////////////////////////////////////////////////////////////////////////////
// Authors: Mateus Fogaça, Isadora Oliveira and Marcelo Danigno
// 
//          (Advisor: Ricardo Reis and Paulo Butzen)
//
// BSD 3-Clause License
//
// Copyright (c) 2020, Federal University of Rio Grande do Sul (UFRGS)
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// * Redistributions of source code must retain the above copyright notice, this
//   list of conditions and the following disclaimer.
//
// * Redistributions in binary form must reproduce the above copyright notice,
//   this list of conditions and the following disclaimer in the documentation
//   and/or other materials provided with the distribution.
//
// * Neither the name of the copyright holder nor the names of its
//   contributors may be used to endorse or promote products derived from
//   this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.
////////////////////////////////////////////////////////////////////////////////

%module partclusmanager
%{
#include "TclInterface.h"
%}

namespace PartClusManager {
extern void set_tool(const char* name);
extern void set_target_partitions(unsigned value);
extern void set_graph_model(const char* name);
extern void set_clique_threshold(unsigned value);
extern void set_weight_model(unsigned value);
extern void set_max_edge_weight(unsigned value);
extern void set_max_vertex_weight(unsigned value);
extern void set_num_starts(unsigned value);
extern void set_balance_constraints(unsigned value);
extern void set_coarsening_ratio(float value);
extern void set_coarsening_vertices(unsigned value);
extern void set_enable_term_prop(unsigned value);
extern void set_cut_hop_ratio(float value);
extern void set_architecture(const char* topology);
extern void clear_architecture();
extern void set_refinement(unsigned value);
extern void set_seeds(const char* seeds);
extern void set_existing_id(int value);
extern void generate_seeds(unsigned value);
extern void set_partition_ids_to_test(const char* seeds);
extern void set_evaluation_function(const char* function);
extern unsigned run_partitioning();
extern unsigned evaluate_partitioning();
extern void write_partitioning_to_db(unsigned id);
extern void dump_part_id_to_file(const char* name); 
extern unsigned run_clustering();
extern void set_level(unsigned value);
extern void write_clustering_to_db(unsigned id);
extern void dump_clus_id_to_file(const char* name); 
extern void report_netlist_partitions(unsigned id);
extern void read_file(const char* filename);
extern void set_final_partitions(unsigned value);
extern void set_force_graph(bool value);
}
