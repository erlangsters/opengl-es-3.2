%% This file is generated. Do not edit!
-module(gl).
-moduledoc """
OpenGL ES 3.2 binding.

It implements the API of OpenGL ES 3.2, adjusted for BEAM (Erlang language).

blabla...
Knowledge of the EGL API in C is assumed, as this module is a direct binding to
the C API. xXxx

XXX: To be written.

Another source of reference is the OpenGL samples project that provides working
C samples with their counterparts in Erlang (and later Elixir).
Repo: [OpenGL Samples](https://github.com/erlangsters/opengl-samples).

Another source of reference is the
[test suites](https://github.com/erlangsters/egl-1.5/tree/master/test)
""".

% Low-level OpenGL types.
-export_type([scalar/1]).
-export_type([vector1/1, vector2/1, vector3/1, vector4/1]).
-export_type([matrix2/1, matrix3/1, matrix4/1]).
-export_type([matrix2x3/1, matrix3x2/1]).
-export_type([matrix2x4/1, matrix4x2/1]).
-export_type([matrix3x4/1, matrix4x3/1]).


-export_type([enum/0]).
-export_type([bitfield/0]).

% High-level OpenGL types.
-export_type([shader/0]).
-export_type([program/0]).
-export_type([buffer/0]).
-export_type([render_buffer/0]).
-export_type([frame_buffer/0]).
-export_type([vertex_array/0]).
-export_type([texture/0]).
-export_type([query/0]).
-export_type([sync/0]).
-export_type([sampler/0]).
-export_type([transform_feedback/0]).
-export_type([program_pipeline/0]).

% The OpenGL enum types.
-export_type([framebuffer_target/0]).
-export_type([string_name/0]).
-export_type([pixel_format/0]).
-export_type([front_face_direction/0]).
-export_type([vertex_attrib_type/0]).
-export_type([sized_internal_format/0]).
-export_type([texture_unit/0]).
-export_type([internal_format/0]).
-export_type([shader_type/0]).
-export_type([vertex_attrib_pointer_type/0]).
-export_type([buffer_usage_a_r_b/0]).
-export_type([sync_condition/0]).
-export_type([program_property_a_r_b/0]).
-export_type([copy_buffer_sub_data_target/0]).
-export_type([texture_target/0]).
-export_type([blending_factor/0]).
-export_type([get_p_name/0]).
-export_type([graphics_reset_status/0]).
-export_type([debug_source/0]).
-export_type([query_target/0]).
-export_type([stencil_op/0]).
-export_type([debug_type/0]).
-export_type([enable_cap/0]).
-export_type([vertex_attrib_i_type/0]).
-export_type([sync_status/0]).
-export_type([buffer_target_a_r_b/0]).
-export_type([bind_transform_feedback_target/0]).
-export_type([read_buffer_mode/0]).
-export_type([pixel_type/0]).
-export_type([hint_target/0]).
-export_type([blend_equation_mode_e_x_t/0]).
-export_type([triangle_face/0]).
-export_type([copy_image_sub_data_target/0]).
-export_type([primitive_type/0]).
-export_type([blit_framebuffer_filter/0]).
-export_type([framebuffer_attachment/0]).
-export_type([shader_parameter_name/0]).
-export_type([renderbuffer_target/0]).
-export_type([depth_function/0]).
-export_type([hint_mode/0]).
-export_type([stencil_function/0]).
-export_type([error_code/0]).
-export_type([framebuffer_status/0]).
-export_type([debug_severity/0]).

% The OpenGL bitfield types.
-export_type([clear_buffer_mask/0]).
-export_type([memory_barrier_mask/0]).
-export_type([sync_behavior_flags/0]).
-export_type([sync_object_mask/0]).
-export_type([use_program_stage_mask/0]).

-export([disable/1]).
-export([memory_barrier_by_region/1]).
-export([tex_sub_image_2d/9]).
-export([blend_func_separate/5]).
-export([bind_render_buffer/2]).
-export([enable_vertex_attrib_array/1]).
-export([clear_stencil/1]).
-export([vertex_attrib_binding/2]).
-export([get_program_info_log/2]).
-export([tex_storage_2d/5]).
-export([get_program_pipeline_info_log/2]).
-export([get_boolean/3]).
-export([is_enabled/2]).
-export([stencil_op/3]).
-export([is_renderbuffer/1]).
-export([get_shader_iv/3]).
-export([flush/0]).
-export([pause_transform_feedback/0]).
-export([is_query/1]).
-export([is_transform_feedback/1]).
-export([read_buffer/1]).
-export([delete_transform_feedbacks/2]).
-export([create_shader/1]).
-export([bind_program_pipeline/1]).
-export([vertex_attrib_pointer/6]).
-export([get_integer64/2]).
-export([draw_arrays_instanced/4]).
-export([delete_framebuffers/2]).
-export([polygon_offset/2]).
-export([end_transform_feedback/0]).
-export([active_shader_program/2]).
-export([stencil_mask/1]).
-export([copy_buffer_sub_data/5]).
-export([disable_vertex_attrib_array/1]).
-export([link_program/1]).
-export([compile_shader/1]).
-export([detach_shader/2]).
-export([copy_image_sub_data/15]).
-export([compressed_tex_image_2d/8]).
-export([attach_shader/2]).
-export([generate_mipmap/1]).
-export([check_framebuffer_status/1]).
-export([is_program/1]).
-export([disable/2]).
-export([fence_sync/2]).
-export([is_shader/1]).
-export([wait_sync/3]).
-export([gen_textures/1]).
-export([enable/2]).
-export([validate_program/1]).
-export([bind_vertex_buffer/4]).
-export([get_string/2]).
-export([tex_sub_image_3d/11]).
-export([memory_barrier/1]).
-export([copy_tex_image_2d/8]).
-export([bind_vertex_array/1]).
-export([blit_framebuffer/10]).
-export([stencil_mask_separate/2]).
-export([debug_message_callback/0]).
-export([vertex_attrib_format/5]).
-export([scissor/4]).
-export([tex_image_2d/9]).
-export([get_error/0]).
-export([is_vertex_array/1]).
-export([bind_texture/2]).
-export([delete_shader/1]).
-export([get_integer/3]).
-export([stencil_func/3]).
-export([gen_program_pipelines/1]).
-export([is_sync/1]).
-export([tex_buffer/3]).
-export([draw_arrays/3]).
-export([framebuffer_texture_2d/5]).
-export([vertex_attrib_i_format/4]).
-export([line_width/1]).
-export([depth_mask/1]).
-export([blend_equation_separate/2]).
-export([copy_tex_sub_image_3d/9]).
-export([viewport/4]).
-export([tex_image_3d/10]).
-export([delete_render_buffers/2]).
-export([compressed_tex_sub_image_2d/9]).
-export([bind_buffer/2]).
-export([vertex_binding_divisor/2]).
-export([blend_func/3]).
-export([buffer_data/4]).
-export([get_shader_source/2]).
-export([sample_coverage/2]).
-export([stencil_op_separate/4]).
-export([debug_message_insert/6]).
-export([blend_func/2]).
-export([use_program_stages/3]).
-export([hint/2]).
-export([pop_debug_group/0]).
-export([get_boolean/2]).
-export([begin_transform_feedback/1]).
-export([get_graphics_reset_status/0]).
-export([blend_color/4]).
-export([tex_storage_2d_multisample/6]).
-export([is_program_pipeline/1]).
-export([begin_query/2]).
-export([tex_buffer_range/5]).
-export([release_shader_compiler/0]).
-export([end_query/1]).
-export([delete_samplers/2]).
-export([shader_source/2]).
-export([clear/1]).
-export([framebuffer_renderbuffer/4]).
-export([validate_program_pipeline/1]).
-export([min_sample_shading/1]).
-export([delete_sync/1]).
-export([read_n_pixels/7]).
-export([copy_tex_sub_image_2d/8]).
-export([stencil_func_separate/4]).
-export([get_integer/2]).
-export([gen_vertex_arrays/1]).
-export([gen_render_buffers/1]).
-export([depth_func/1]).
-export([gen_framebuffers/1]).
-export([vertex_attrib_divisor/2]).
-export([delete_program_pipelines/2]).
-export([get_float/2]).
-export([tex_storage_3d/6]).
-export([color_mask/4]).
-export([renderbuffer_storage_multisample/5]).
-export([is_texture/1]).
-export([is_framebuffer/1]).
-export([gen_samplers/1]).
-export([gen_transform_feedbacks/1]).
-export([is_sampler/1]).
-export([front_face/1]).
-export([blend_equation/1]).
-export([get_string/1]).
-export([client_wait_sync/3]).
-export([get_shader_info_log/2]).
-export([gen_queries/1]).
-export([enable/1]).
-export([is_buffer/1]).
-export([blend_func_separate/4]).
-export([bind_framebuffer/2]).
-export([clear_color/4]).
-export([blend_equation_separate/3]).
-export([compressed_tex_image_3d/9]).
-export([delete_queries/2]).
-export([color_mask/5]).
-export([framebuffer_texture/4]).
-export([delete_textures/2]).
-export([render_buffer_storage/4]).
-export([is_enabled/1]).
-export([dispatch_compute/3]).
-export([compressed_tex_sub_image_3d/11]).
-export([delete_buffers/2]).
-export([gen_buffers/1]).
-export([active_texture/1]).
-export([resume_transform_feedback/0]).
-export([get_integer64/3]).
-export([finish/0]).
-export([blend_equation/2]).
-export([create_program/0]).
-export([tex_storage_3d_multisample/7]).
-export([framebuffer_texture_layer/5]).
-export([dispatch_compute_indirect/1]).
-export([cull_face/1]).
-export([delete_vertex_arrays/2]).
-export([get_program_iv/3]).
-export([use_program/1]).
-export([read_pixels/7]).
-export([delete_program/1]).
-export([bind_transform_feedback/2]).

-include("../include/gl.hrl").

-doc "to be written.".
-type scalar(Type) :: Type.

-doc "to be written.".
-type vector1(Type) :: {scalar(Type)}.
-doc "to be written.".
-type vector2(Type) :: {scalar(Type), scalar(Type)}.
-doc "to be written.".
-type vector3(Type) :: {scalar(Type), scalar(Type), scalar(Type)}.
-doc "to be written.".
-type vector4(Type) :: {scalar(Type), scalar(Type), scalar(Type), scalar(Type)}.
-doc "to be written.".

-type matrix2(Type) :: {vector2(Type), vector2(Type)}.
-doc "to be written.".
-type matrix3(Type) :: {vector3(Type), vector3(Type), vector3(Type)}.
-doc "to be written.".
-type matrix4(Type) :: {vector4(Type), vector4(Type), vector4(Type), vector4(Type)}.
-doc "to be written.".

-type matrix2x3(Type) :: {vector3(Type), vector3(Type)}.
-doc "to be written.".
-type matrix3x2(Type) :: {vector2(Type), vector2(Type), vector2(Type)}.
-doc "to be written.".

-type matrix2x4(Type) :: {vector4(Type), vector4(Type)}.
-doc "to be written.".
-type matrix4x2(Type) :: {vector2(Type), vector2(Type), vector2(Type), vector2(Type)}.
-doc "to be written.".

-type matrix3x4(Type) :: {vector4(Type), vector4(Type), vector4(Type)}.
-doc "to be written.".
-type matrix4x3(Type) :: {vector3(Type), vector3(Type), vector3(Type), vector3(Type)}.


-doc "An OpenGL enum..".
-type enum() :: atom().
-doc "An OpenGL bitfield.".
-type bitfield() :: [atom()].

-doc "An OpenGL shader object.".
-type shader() :: pos_integer().
-doc "An OpenGL program object.".
-type program() :: pos_integer().
-doc "An OpenGL buffer object.".
-type buffer() :: pos_integer().
-doc "An OpenGL render buffer object.".
-type render_buffer() :: pos_integer().
-doc "An OpenGL frame buffer object.".
-type frame_buffer() :: pos_integer().
-doc "An OpenGL vertex array object.".
-type vertex_array() :: pos_integer().
-doc "An OpenGL texture object.".
-type texture() :: pos_integer().
-doc "An OpenGL query object.".
-type query() :: pos_integer().
-doc "An OpenGL sync object.".
-type sync() :: pos_integer().
-doc "An OpenGL sampler object.".
-type sampler() :: pos_integer().
-doc "An OpenGL transform feedback object.".
-type transform_feedback() :: pos_integer().
-doc "An OpenGL program pipeline object.".
-type program_pipeline() :: pos_integer().

-doc "The OpenGL `framebuffer_target` enum.".
-type framebuffer_target() :: 
    draw_framebuffer |
    framebuffer |
    read_framebuffer
.
-doc "The OpenGL `string_name` enum.".
-type string_name() :: 
    version |
    shading_language_version |
    extensions |
    renderer |
    vendor
.
-doc "The OpenGL `pixel_format` enum.".
-type pixel_format() :: 
    rgba_integer |
    luminance |
    rgb |
    rgb_integer |
    rg |
    blue |
    alpha |
    depth_stencil |
    green |
    red |
    depth_component |
    luminance_alpha |
    unsigned_int |
    red_integer |
    stencil_index |
    rg_integer |
    rgba |
    unsigned_short
.
-doc "The OpenGL `front_face_direction` enum.".
-type front_face_direction() :: 
    cw |
    ccw
.
-doc "The OpenGL `vertex_attrib_type` enum.".
-type vertex_attrib_type() :: 
    half_float |
    int_2_10_10_10_rev |
    fixed |
    short |
    unsigned_int_10f_11f_11f_rev |
    unsigned_int_2_10_10_10_rev |
    unsigned_byte |
    float |
    int |
    unsigned_int |
    unsigned_short |
    byte
.
-doc "The OpenGL `sized_internal_format` enum.".
-type sized_internal_format() :: 
    r32i |
    rgb8 |
    compressed_rg11_eac |
    stencil_index8 |
    rg32ui |
    rgb16ui |
    rgb32ui |
    rg8ui |
    compressed_srgb8_alpha8_astc_5x5 |
    compressed_rgba_astc_6x5 |
    rgba8i |
    rgba8_snorm |
    compressed_rgba_astc_6x6 |
    rgba32ui |
    compressed_rgba_astc_8x5 |
    compressed_r11_eac |
    compressed_rgb8_punchthrough_alpha1_etc2 |
    compressed_signed_rg11_eac |
    compressed_rgba_astc_10x8 |
    rgb16i |
    rgba32i |
    rg16ui |
    depth_component16 |
    compressed_rgba_astc_8x8 |
    compressed_srgb8_alpha8_astc_8x8 |
    rg32f |
    compressed_srgb8_alpha8_astc_10x5 |
    r8 |
    compressed_srgb8_etc2 |
    compressed_rgba_astc_8x6 |
    compressed_signed_r11_eac |
    r32f |
    rg8i |
    rgba16i |
    rgb8i |
    compressed_rgba8_etc2_eac |
    compressed_srgb8_alpha8_astc_10x8 |
    rgb32f |
    r16f |
    rg16i |
    rgb565 |
    rgb10_a2 |
    srgb8 |
    compressed_srgb8_alpha8_astc_10x10 |
    compressed_srgb8_alpha8_astc_8x6 |
    compressed_srgb8_alpha8_astc_6x6 |
    rgba16ui |
    compressed_rgba_astc_10x10 |
    compressed_rgba_astc_12x12 |
    r32ui |
    rgb8ui |
    r16i |
    compressed_srgb8_punchthrough_alpha1_etc2 |
    rg16f |
    rgba32f |
    rgb32i |
    rgba8 |
    compressed_rgba_astc_5x5 |
    rgb16f |
    rgba4 |
    depth_component32f |
    r8ui |
    depth24_stencil8 |
    compressed_srgb8_alpha8_astc_12x12 |
    rgb8_snorm |
    srgb8_alpha8 |
    r8i |
    rgba8ui |
    compressed_srgb8_alpha8_astc_12x10 |
    r8_snorm |
    rgb10_a2ui |
    r11f_g11f_b10f |
    compressed_rgba_astc_10x5 |
    rgb9_e5 |
    compressed_srgb8_alpha8_astc_10x6 |
    compressed_rgba_astc_5x4 |
    rgb5_a1 |
    rg32i |
    compressed_rgba_astc_10x6 |
    compressed_rgb8_etc2 |
    compressed_srgb8_alpha8_astc_5x4 |
    rgba16f |
    compressed_srgb8_alpha8_etc2_eac |
    compressed_srgb8_alpha8_astc_8x5 |
    compressed_srgb8_alpha8_astc_6x5 |
    rg8_snorm |
    depth_component24 |
    r16ui |
    depth32f_stencil8 |
    compressed_rgba_astc_12x10 |
    rg8 |
    compressed_srgb8_alpha8_astc_4x4 |
    compressed_rgba_astc_4x4
.
-doc "The OpenGL `texture_unit` enum.".
-type texture_unit() :: 
    texture19 |
    texture14 |
    texture10 |
    texture2 |
    texture17 |
    texture6 |
    texture8 |
    texture9 |
    texture28 |
    texture23 |
    texture24 |
    texture27 |
    texture21 |
    texture12 |
    texture4 |
    texture16 |
    texture13 |
    texture29 |
    texture3 |
    texture5 |
    texture11 |
    texture18 |
    texture7 |
    texture25 |
    texture26 |
    texture20 |
    texture30 |
    texture15 |
    texture1 |
    texture22 |
    texture0 |
    texture31
.
-doc "The OpenGL `internal_format` enum.".
-type internal_format() :: 
    r32i |
    rgb8 |
    compressed_rg11_eac |
    stencil_index8 |
    rg32ui |
    rgb16ui |
    rgb32ui |
    rg8ui |
    compressed_srgb8_alpha8_astc_5x5 |
    compressed_rgba_astc_6x5 |
    rgba8i |
    rgba8_snorm |
    compressed_rgba_astc_6x6 |
    rgb |
    rgba32ui |
    compressed_rgba_astc_8x5 |
    compressed_r11_eac |
    compressed_rgb8_punchthrough_alpha1_etc2 |
    compressed_signed_rg11_eac |
    compressed_rgba_astc_10x8 |
    rgb16i |
    rgba32i |
    rg16ui |
    rg |
    depth_component16 |
    compressed_rgba_astc_8x8 |
    compressed_srgb8_alpha8_astc_8x8 |
    rg32f |
    compressed_srgb8_alpha8_astc_10x5 |
    r8 |
    compressed_srgb8_etc2 |
    compressed_rgba_astc_8x6 |
    compressed_signed_r11_eac |
    r32f |
    rg8i |
    rgba16i |
    rgb8i |
    compressed_rgba8_etc2_eac |
    compressed_srgb8_alpha8_astc_10x8 |
    rgb32f |
    r16f |
    rg16i |
    rgb565 |
    rgb10_a2 |
    srgb8 |
    depth_stencil |
    compressed_srgb8_alpha8_astc_10x10 |
    compressed_srgb8_alpha8_astc_8x6 |
    compressed_srgb8_alpha8_astc_6x6 |
    rgba16ui |
    srgb |
    compressed_rgba_astc_10x10 |
    compressed_rgba_astc_12x12 |
    r32ui |
    rgb8ui |
    r16i |
    compressed_srgb8_punchthrough_alpha1_etc2 |
    rg16f |
    rgba32f |
    rgb32i |
    rgba8 |
    red |
    compressed_rgba_astc_5x5 |
    rgb16f |
    rgba4 |
    depth_component32f |
    r8ui |
    depth24_stencil8 |
    depth_component |
    compressed_srgb8_alpha8_astc_12x12 |
    rgb8_snorm |
    srgb8_alpha8 |
    r8i |
    rgba8ui |
    compressed_srgb8_alpha8_astc_12x10 |
    r8_snorm |
    rgb10_a2ui |
    r11f_g11f_b10f |
    compressed_rgba_astc_10x5 |
    rgb9_e5 |
    compressed_srgb8_alpha8_astc_10x6 |
    compressed_rgba_astc_5x4 |
    rgb5_a1 |
    stencil_index |
    rg32i |
    compressed_rgba_astc_10x6 |
    compressed_rgb8_etc2 |
    compressed_srgb8_alpha8_astc_5x4 |
    rgba16f |
    compressed_srgb8_alpha8_etc2_eac |
    compressed_srgb8_alpha8_astc_8x5 |
    compressed_srgb8_alpha8_astc_6x5 |
    rg8_snorm |
    rgba |
    depth_component24 |
    r16ui |
    depth32f_stencil8 |
    compressed_rgba_astc_12x10 |
    rg8 |
    compressed_srgb8_alpha8_astc_4x4 |
    compressed_rgba_astc_4x4
.
-doc "The OpenGL `shader_type` enum.".
-type shader_type() :: 
    tess_control_shader |
    geometry_shader |
    tess_evaluation_shader |
    compute_shader |
    fragment_shader |
    vertex_shader
.
-doc "The OpenGL `vertex_attrib_pointer_type` enum.".
-type vertex_attrib_pointer_type() :: 
    half_float |
    int_2_10_10_10_rev |
    fixed |
    short |
    unsigned_int_10f_11f_11f_rev |
    unsigned_int_2_10_10_10_rev |
    unsigned_byte |
    float |
    int |
    unsigned_int |
    unsigned_short |
    byte
.
-doc "The OpenGL `buffer_usage_a_r_b` enum.".
-type buffer_usage_a_r_b() :: 
    dynamic_draw |
    static_draw |
    dynamic_copy |
    static_read |
    stream_copy |
    stream_read |
    static_copy |
    dynamic_read |
    stream_draw
.
-doc "The OpenGL `sync_condition` enum.".
-type sync_condition() :: 
    sync_gpu_commands_complete
.
-doc "The OpenGL `program_property_a_r_b` enum.".
-type program_property_a_r_b() :: 
    attached_shaders |
    geometry_input_type |
    link_status |
    info_log_length |
    geometry_output_type |
    validate_status |
    active_uniforms |
    active_attribute_max_length |
    active_attributes |
    program_binary_length |
    transform_feedback_varyings |
    active_uniform_block_max_name_length |
    delete_status |
    transform_feedback_varying_max_length |
    compute_work_group_size |
    geometry_vertices_out |
    active_atomic_counter_buffers |
    active_uniform_max_length |
    active_uniform_blocks |
    transform_feedback_buffer_mode
.
-doc "The OpenGL `copy_buffer_sub_data_target` enum.".
-type copy_buffer_sub_data_target() :: 
    pixel_unpack_buffer |
    dispatch_indirect_buffer |
    array_buffer |
    copy_read_buffer |
    texture_buffer |
    pixel_pack_buffer |
    transform_feedback_buffer |
    draw_indirect_buffer |
    shader_storage_buffer |
    copy_write_buffer |
    uniform_buffer |
    atomic_counter_buffer |
    element_array_buffer
.
-doc "The OpenGL `texture_target` enum.".
-type texture_target() :: 
    texture_cube_map_array |
    texture_2d_multisample |
    texture_2d_multisample_array |
    texture_2d |
    texture_buffer |
    texture_2d_array |
    texture_cube_map_negative_z |
    texture_cube_map_positive_x |
    texture_3d |
    renderbuffer |
    texture_cube_map_negative_y |
    texture_cube_map_positive_y |
    texture_cube_map_negative_x |
    texture_cube_map |
    texture_cube_map_positive_z
.
-doc "The OpenGL `blending_factor` enum.".
-type blending_factor() :: 
    constant_color |
    one_minus_constant_alpha |
    dst_color |
    one_minus_src_alpha |
    one_minus_dst_color |
    src_color |
    constant_alpha |
    one_minus_constant_color |
    src_alpha_saturate |
    zero |
    one_minus_src_color |
    one_minus_dst_alpha |
    dst_alpha |
    one |
    src_alpha
.
-doc "The OpenGL `get_p_name` enum.".
-type get_p_name() :: 
    max_varying_vectors |
    compressed_texture_formats |
    polygon_offset_fill |
    shader_storage_buffer_size |
    dither |
    max_combined_compute_uniform_components |
    texture_buffer_offset_alignment |
    stencil_back_func |
    stencil_pass_depth_pass |
    max_combined_uniform_blocks |
    draw_framebuffer_binding |
    pack_skip_rows |
    blend_equation_rgb |
    max_elements_indices |
    max_label_length |
    max_compute_uniform_components |
    depth_func |
    max_vertex_uniform_blocks |
    max_geometry_output_components |
    depth_test |
    max_combined_shader_storage_blocks |
    shader_storage_buffer_start |
    min_program_texel_offset |
    max_framebuffer_samples |
    color_clear_value |
    major_version |
    max_compute_work_group_invocations |
    max_geometry_atomic_counters |
    max_vertex_uniform_components |
    max_compute_shader_storage_blocks |
    max_framebuffer_height |
    max_combined_geometry_uniform_components |
    max_shader_storage_buffer_bindings |
    max_draw_buffers |
    current_program |
    max_vertex_attrib_relative_offset |
    max_texture_buffer_size |
    max_tess_control_uniform_blocks |
    pack_row_length |
    max_geometry_input_components |
    context_flags |
    transform_feedback_buffer_binding |
    shader_binary_formats |
    max_vertex_atomic_counters |
    stencil_ref |
    texture_binding_2d_multisample_array |
    front_face |
    max_vertex_attribs |
    texture_2d |
    program_binary_formats |
    stencil_back_writemask |
    max_compute_texture_image_units |
    cull_face_mode |
    max_tess_evaluation_uniform_blocks |
    max_fragment_atomic_counters |
    scissor_test |
    max_color_texture_samples |
    max_fragment_uniform_vectors |
    sampler_binding |
    sample_coverage_invert |
    samples |
    element_array_buffer_binding |
    max_sample_mask_words |
    blue_bits |
    max_vertex_uniform_vectors |
    max_compute_atomic_counter_buffers |
    green_bits |
    implementation_color_read_type |
    alpha_bits |
    aliased_line_width_range |
    texture_binding_2d_array |
    pixel_unpack_buffer_binding |
    blend_color |
    blend_equation_alpha |
    max_uniform_block_size |
    stencil_back_pass_depth_fail |
    num_program_binary_formats |
    max_tess_control_shader_storage_blocks |
    max_framebuffer_width |
    stencil_back_pass_depth_pass |
    max_combined_atomic_counters |
    vertex_binding_divisor |
    pack_alignment |
    max_compute_work_group_size |
    renderbuffer_binding |
    read_framebuffer_binding |
    max_tess_control_atomic_counters |
    texture_binding_cube_map |
    stencil_pass_depth_fail |
    unpack_skip_images |
    max_geometry_uniform_components |
    max_texture_size |
    red_bits |
    max_geometry_texture_image_units |
    unpack_image_height |
    max_compute_atomic_counters |
    cull_face |
    sample_coverage_value |
    max_vertex_texture_image_units |
    array_buffer_binding |
    max_geometry_uniform_blocks |
    max_3d_texture_size |
    stencil_writemask |
    scissor_box |
    minor_version |
    max_compute_uniform_blocks |
    max_server_wait_timeout |
    transform_feedback_buffer_size |
    max_combined_fragment_uniform_components |
    shader_storage_buffer_offset_alignment |
    max_vertex_shader_storage_blocks |
    depth_bits |
    num_extensions |
    vertex_binding_stride |
    blend_dst_alpha |
    unpack_skip_rows |
    max_viewport_dims |
    num_shader_binary_formats |
    max_depth_texture_samples |
    vertex_array_binding |
    max_fragment_input_components |
    depth_clear_value |
    unpack_skip_pixels |
    stencil_back_fail |
    stencil_back_ref |
    max_renderbuffer_size |
    max_element_index |
    max_vertex_output_components |
    stencil_back_value_mask |
    max_color_attachments |
    max_combined_texture_image_units |
    max_texture_image_units |
    uniform_buffer_size |
    max_vertex_attrib_bindings |
    shader_storage_buffer_binding |
    blend |
    program_pipeline_binding |
    stencil_value_mask |
    max_texture_lod_bias |
    unpack_row_length |
    pack_skip_pixels |
    max_integer_samples |
    stencil_clear_value |
    color_writemask |
    layer_provoking_vertex |
    shader_compiler |
    max_fragment_uniform_components |
    max_debug_group_stack_depth |
    stencil_test |
    stencil_bits |
    max_elements_vertices |
    unpack_alignment |
    vertex_binding_offset |
    subpixel_bits |
    transform_feedback_buffer_start |
    max_combined_vertex_uniform_components |
    debug_group_stack_depth |
    depth_range |
    sample_buffers |
    max_cube_map_texture_size |
    fragment_shader_derivative_hint |
    polygon_offset_factor |
    max_fragment_shader_storage_blocks |
    texture_binding_2d_multisample |
    max_uniform_locations |
    uniform_buffer_binding |
    dispatch_indirect_buffer_binding |
    depth_writemask |
    blend_src_rgb |
    max_program_texel_offset |
    max_compute_work_group_count |
    implementation_color_read_format |
    blend_equation |
    stencil_func |
    max_uniform_buffer_bindings |
    uniform_buffer_start |
    texture_binding_2d |
    max_array_texture_layers |
    read_buffer |
    max_framebuffer_layers |
    blend_src_alpha |
    max_varying_components |
    max_fragment_uniform_blocks |
    aliased_point_size_range |
    max_tess_evaluation_atomic_counters |
    uniform_buffer_offset_alignment |
    blend_dst_rgb |
    vertex_array |
    line_width |
    max_geometry_shader_storage_blocks |
    active_texture |
    viewport |
    stencil_fail |
    pixel_pack_buffer_binding |
    num_compressed_texture_formats |
    texture_binding_buffer |
    texture_binding_3d |
    max_tess_evaluation_shader_storage_blocks |
    polygon_offset_units
.
-doc "The OpenGL `graphics_reset_status` enum.".
-type graphics_reset_status() :: 
    guilty_context_reset |
    unknown_context_reset |
    innocent_context_reset |
    no_error
.
-doc "The OpenGL `debug_source` enum.".
-type debug_source() :: 
    debug_source_third_party |
    dont_care |
    debug_source_application |
    debug_source_shader_compiler |
    debug_source_api |
    debug_source_other |
    debug_source_window_system
.
-doc "The OpenGL `query_target` enum.".
-type query_target() :: 
    any_samples_passed_conservative |
    any_samples_passed |
    transform_feedback_primitives_written |
    primitives_generated
.
-doc "The OpenGL `stencil_op` enum.".
-type stencil_op() :: 
    incr_wrap |
    incr |
    invert |
    zero |
    decr_wrap |
    keep |
    decr |
    replace
.
-doc "The OpenGL `debug_type` enum.".
-type debug_type() :: 
    debug_type_other |
    debug_type_marker |
    debug_type_performance |
    dont_care |
    debug_type_error |
    debug_type_deprecated_behavior |
    debug_type_pop_group |
    debug_type_portability |
    debug_type_push_group |
    debug_type_undefined_behavior
.
-doc "The OpenGL `enable_cap` enum.".
-type enable_cap() :: 
    polygon_offset_fill |
    dither |
    depth_test |
    texture_2d |
    scissor_test |
    sample_shading |
    cull_face |
    debug_output_synchronous |
    primitive_restart_fixed_index |
    blend |
    debug_output |
    stencil_test |
    texture_cube_map |
    sample_coverage |
    sample_alpha_to_coverage |
    rasterizer_discard |
    vertex_array |
    sample_mask
.
-doc "The OpenGL `vertex_attrib_i_type` enum.".
-type vertex_attrib_i_type() :: 
    short |
    unsigned_byte |
    int |
    unsigned_int |
    unsigned_short |
    byte
.
-doc "The OpenGL `sync_status` enum.".
-type sync_status() :: 
    condition_satisfied |
    already_signaled |
    wait_failed |
    timeout_expired
.
-doc "The OpenGL `buffer_target_a_r_b` enum.".
-type buffer_target_a_r_b() :: 
    pixel_unpack_buffer |
    dispatch_indirect_buffer |
    array_buffer |
    copy_read_buffer |
    texture_buffer |
    pixel_pack_buffer |
    transform_feedback_buffer |
    draw_indirect_buffer |
    shader_storage_buffer |
    copy_write_buffer |
    uniform_buffer |
    atomic_counter_buffer |
    element_array_buffer
.
-doc "The OpenGL `bind_transform_feedback_target` enum.".
-type bind_transform_feedback_target() :: 
    transform_feedback
.
-doc "The OpenGL `read_buffer_mode` enum.".
-type read_buffer_mode() :: 
    color_attachment2 |
    color_attachment6 |
    color_attachment13 |
    color_attachment5 |
    color_attachment11 |
    color_attachment0 |
    color_attachment7 |
    color_attachment12 |
    color_attachment4 |
    color_attachment9 |
    front |
    color_attachment8 |
    color_attachment15 |
    back |
    color_attachment1 |
    color_attachment10 |
    color_attachment3 |
    none |
    color_attachment14
.
-doc "The OpenGL `pixel_type` enum.".
-type pixel_type() :: 
    half_float |
    unsigned_short_5_6_5 |
    short |
    float_32_unsigned_int_24_8_rev |
    unsigned_short_5_5_5_1 |
    unsigned_int_10f_11f_11f_rev |
    unsigned_int_2_10_10_10_rev |
    unsigned_byte |
    unsigned_int_24_8 |
    float |
    unsigned_int_5_9_9_9_rev |
    unsigned_short_4_4_4_4 |
    int |
    unsigned_int |
    unsigned_short |
    byte
.
-doc "The OpenGL `hint_target` enum.".
-type hint_target() :: 
    generate_mipmap_hint |
    program_binary_retrievable_hint |
    fragment_shader_derivative_hint
.
-doc "The OpenGL `blend_equation_mode_e_x_t` enum.".
-type blend_equation_mode_e_x_t() :: 
    func_add |
    max |
    func_subtract |
    func_reverse_subtract |
    min
.
-doc "The OpenGL `triangle_face` enum.".
-type triangle_face() :: 
    front |
    back |
    front_and_back
.
-doc "The OpenGL `copy_image_sub_data_target` enum.".
-type copy_image_sub_data_target() :: 
    texture_cube_map_array |
    texture_2d_multisample |
    texture_2d_multisample_array |
    texture_2d |
    texture_2d_array |
    texture_3d |
    renderbuffer |
    texture_cube_map
.
-doc "The OpenGL `primitive_type` enum.".
-type primitive_type() :: 
    line_strip_adjacency |
    lines_adjacency |
    line_loop |
    points |
    quads |
    triangle_fan |
    patches |
    lines |
    triangle_strip_adjacency |
    line_strip |
    triangle_strip |
    triangles |
    triangles_adjacency
.
-doc "The OpenGL `blit_framebuffer_filter` enum.".
-type blit_framebuffer_filter() :: 
    nearest |
    linear
.
-doc "The OpenGL `framebuffer_attachment` enum.".
-type framebuffer_attachment() :: 
    color_attachment2 |
    color_attachment16 |
    color_attachment21 |
    color_attachment6 |
    color_attachment29 |
    color_attachment13 |
    color_attachment19 |
    color_attachment22 |
    color_attachment5 |
    color_attachment11 |
    color_attachment25 |
    color_attachment23 |
    color_attachment0 |
    color_attachment17 |
    color_attachment7 |
    color_attachment12 |
    color_attachment4 |
    color_attachment18 |
    color_attachment9 |
    color_attachment26 |
    color_attachment8 |
    color_attachment15 |
    color_attachment20 |
    color_attachment1 |
    depth_stencil_attachment |
    color_attachment10 |
    color_attachment27 |
    color_attachment3 |
    color_attachment31 |
    depth_attachment |
    color_attachment28 |
    color_attachment30 |
    color_attachment24 |
    color_attachment14 |
    stencil_attachment
.
-doc "The OpenGL `shader_parameter_name` enum.".
-type shader_parameter_name() :: 
    info_log_length |
    shader_source_length |
    compile_status |
    delete_status |
    shader_type
.
-doc "The OpenGL `renderbuffer_target` enum.".
-type renderbuffer_target() :: 
    renderbuffer
.
-doc "The OpenGL `depth_function` enum.".
-type depth_function() :: 
    less |
    notequal |
    greater |
    gequal |
    lequal |
    never |
    always |
    equal
.
-doc "The OpenGL `hint_mode` enum.".
-type hint_mode() :: 
    fastest |
    dont_care |
    nicest
.
-doc "The OpenGL `stencil_function` enum.".
-type stencil_function() :: 
    less |
    notequal |
    greater |
    gequal |
    lequal |
    never |
    always |
    equal
.
-doc "The OpenGL `error_code` enum.".
-type error_code() :: 
    invalid_enum |
    stack_underflow |
    invalid_framebuffer_operation |
    invalid_operation |
    out_of_memory |
    no_error |
    invalid_value |
    stack_overflow
.
-doc "The OpenGL `framebuffer_status` enum.".
-type framebuffer_status() :: 
    framebuffer_incomplete_attachment |
    framebuffer_incomplete_missing_attachment |
    framebuffer_unsupported |
    framebuffer_undefined |
    framebuffer_incomplete_layer_targets |
    framebuffer_incomplete_multisample |
    framebuffer_complete
.
-doc "The OpenGL `debug_severity` enum.".
-type debug_severity() :: 
    debug_severity_medium |
    dont_care |
    debug_severity_low |
    debug_severity_high |
    debug_severity_notification
.

-doc "The OpenGL `clear_buffer_mask` bitfield.".
-type clear_buffer_mask() :: [
    depth_buffer_bit |
    color_buffer_bit |
    stencil_buffer_bit
].
-doc "The OpenGL `memory_barrier_mask` bitfield.".
-type memory_barrier_mask() :: [
    vertex_attrib_array_barrier_bit |
    shader_image_access_barrier_bit |
    element_array_barrier_bit |
    command_barrier_bit |
    buffer_update_barrier_bit |
    uniform_barrier_bit |
    pixel_buffer_barrier_bit |
    framebuffer_barrier_bit |
    transform_feedback_barrier_bit |
    texture_fetch_barrier_bit |
    shader_storage_barrier_bit |
    texture_update_barrier_bit |
    atomic_counter_barrier_bit |
    all_barrier_bits
].
-doc "The OpenGL `sync_behavior_flags` bitfield.".
-type sync_behavior_flags() :: [
    none
].
-doc "The OpenGL `sync_object_mask` bitfield.".
-type sync_object_mask() :: [
    sync_flush_commands_bit
].
-doc "The OpenGL `use_program_stage_mask` bitfield.".
-type use_program_stage_mask() :: [
    compute_shader_bit |
    geometry_shader_bit |
    vertex_shader_bit |
    tess_evaluation_shader_bit |
    fragment_shader_bit |
    all_shader_bits |
    tess_control_shader_bit
].


-nifs([glDisable_raw/1]).
-nifs([glMemoryBarrierByRegion_raw/1]).
-nifs([glTexSubImage2D_raw/9]).
-nifs([glBlendFuncSeparatei_raw/5]).
-nifs([glBindRenderbuffer_raw/2]).
-nifs([glEnableVertexAttribArray_raw/1]).
-nifs([glClearStencil_raw/1]).
-nifs([glVertexAttribBinding_raw/2]).
-nifs([glGetProgramInfoLog_raw/2]).
-nifs([glTexStorage2D_raw/5]).
-nifs([glGetProgramPipelineInfoLog_raw/2]).
-nifs([glGetBooleani_v_raw/3]).
-nifs([glIsEnabledi_raw/2]).
-nifs([glStencilOp_raw/3]).
-nifs([glIsRenderbuffer_raw/1]).
-nifs([glGetShaderiv_raw/3]).
-nifs([glFlush_raw/0]).
-nifs([glPauseTransformFeedback_raw/0]).
-nifs([glIsQuery_raw/1]).
-nifs([glIsTransformFeedback_raw/1]).
-nifs([glReadBuffer_raw/1]).
-nifs([glDeleteTransformFeedbacks_raw/2]).
-nifs([glCreateShader_raw/1]).
-nifs([glBindProgramPipeline_raw/1]).
-nifs([glVertexAttribPointer_raw/6]).
-nifs([glGetInteger64v_raw/2]).
-nifs([glDrawArraysInstanced_raw/4]).
-nifs([glDeleteFramebuffers_raw/2]).
-nifs([glPolygonOffset_raw/2]).
-nifs([glEndTransformFeedback_raw/0]).
-nifs([glActiveShaderProgram_raw/2]).
-nifs([glStencilMask_raw/1]).
-nifs([glCopyBufferSubData_raw/5]).
-nifs([glDisableVertexAttribArray_raw/1]).
-nifs([glLinkProgram_raw/1]).
-nifs([glCompileShader_raw/1]).
-nifs([glDetachShader_raw/2]).
-nifs([glCopyImageSubData_raw/15]).
-nifs([glCompressedTexImage2D_raw/8]).
-nifs([glAttachShader_raw/2]).
-nifs([glGenerateMipmap_raw/1]).
-nifs([glCheckFramebufferStatus_raw/1]).
-nifs([glIsProgram_raw/1]).
-nifs([glDisablei_raw/2]).
-nifs([glFenceSync_raw/2]).
-nifs([glIsShader_raw/1]).
-nifs([glWaitSync_raw/3]).
-nifs([glGenTextures_raw/1]).
-nifs([glEnablei_raw/2]).
-nifs([glValidateProgram_raw/1]).
-nifs([glBindVertexBuffer_raw/4]).
-nifs([glGetStringi_raw/2]).
-nifs([glTexSubImage3D_raw/11]).
-nifs([glMemoryBarrier_raw/1]).
-nifs([glCopyTexImage2D_raw/8]).
-nifs([glBindVertexArray_raw/1]).
-nifs([glBlitFramebuffer_raw/10]).
-nifs([glStencilMaskSeparate_raw/2]).
-nifs([glDebugMessageCallback_raw/0]).
-nifs([glVertexAttribFormat_raw/5]).
-nifs([glScissor_raw/4]).
-nifs([glTexImage2D_raw/9]).
-nifs([glGetError_raw/0]).
-nifs([glIsVertexArray_raw/1]).
-nifs([glBindTexture_raw/2]).
-nifs([glDeleteShader_raw/1]).
-nifs([glGetIntegeri_v_raw/3]).
-nifs([glStencilFunc_raw/3]).
-nifs([glGenProgramPipelines_raw/1]).
-nifs([glIsSync_raw/1]).
-nifs([glTexBuffer_raw/3]).
-nifs([glDrawArrays_raw/3]).
-nifs([glFramebufferTexture2D_raw/5]).
-nifs([glVertexAttribIFormat_raw/4]).
-nifs([glLineWidth_raw/1]).
-nifs([glDepthMask_raw/1]).
-nifs([glBlendEquationSeparate_raw/2]).
-nifs([glCopyTexSubImage3D_raw/9]).
-nifs([glViewport_raw/4]).
-nifs([glTexImage3D_raw/10]).
-nifs([glDeleteRenderbuffers_raw/2]).
-nifs([glCompressedTexSubImage2D_raw/9]).
-nifs([glBindBuffer_raw/2]).
-nifs([glVertexBindingDivisor_raw/2]).
-nifs([glBlendFunci_raw/3]).
-nifs([glBufferData_raw/4]).
-nifs([glGetShaderSource_raw/2]).
-nifs([glSampleCoverage_raw/2]).
-nifs([glStencilOpSeparate_raw/4]).
-nifs([glDebugMessageInsert_raw/6]).
-nifs([glBlendFunc_raw/2]).
-nifs([glUseProgramStages_raw/3]).
-nifs([glHint_raw/2]).
-nifs([glPopDebugGroup_raw/0]).
-nifs([glGetBooleanv_raw/2]).
-nifs([glBeginTransformFeedback_raw/1]).
-nifs([glGetGraphicsResetStatus_raw/0]).
-nifs([glBlendColor_raw/4]).
-nifs([glTexStorage2DMultisample_raw/6]).
-nifs([glIsProgramPipeline_raw/1]).
-nifs([glBeginQuery_raw/2]).
-nifs([glTexBufferRange_raw/5]).
-nifs([glReleaseShaderCompiler_raw/0]).
-nifs([glEndQuery_raw/1]).
-nifs([glDeleteSamplers_raw/2]).
-nifs([glShaderSource_raw/2]).
-nifs([glClear_raw/1]).
-nifs([glFramebufferRenderbuffer_raw/4]).
-nifs([glValidateProgramPipeline_raw/1]).
-nifs([glMinSampleShading_raw/1]).
-nifs([glDeleteSync_raw/1]).
-nifs([glReadnPixels_raw/7]).
-nifs([glCopyTexSubImage2D_raw/8]).
-nifs([glStencilFuncSeparate_raw/4]).
-nifs([glGetIntegerv_raw/2]).
-nifs([glGenVertexArrays_raw/1]).
-nifs([glGenRenderbuffers_raw/1]).
-nifs([glDepthFunc_raw/1]).
-nifs([glGenFramebuffers_raw/1]).
-nifs([glVertexAttribDivisor_raw/2]).
-nifs([glDeleteProgramPipelines_raw/2]).
-nifs([glGetFloatv_raw/2]).
-nifs([glTexStorage3D_raw/6]).
-nifs([glColorMask_raw/4]).
-nifs([glRenderbufferStorageMultisample_raw/5]).
-nifs([glIsTexture_raw/1]).
-nifs([glIsFramebuffer_raw/1]).
-nifs([glGenSamplers_raw/1]).
-nifs([glGenTransformFeedbacks_raw/1]).
-nifs([glIsSampler_raw/1]).
-nifs([glFrontFace_raw/1]).
-nifs([glBlendEquation_raw/1]).
-nifs([glGetString_raw/1]).
-nifs([glClientWaitSync_raw/3]).
-nifs([glGetShaderInfoLog_raw/2]).
-nifs([glGenQueries_raw/1]).
-nifs([glEnable_raw/1]).
-nifs([glIsBuffer_raw/1]).
-nifs([glBlendFuncSeparate_raw/4]).
-nifs([glBindFramebuffer_raw/2]).
-nifs([glClearColor_raw/4]).
-nifs([glBlendEquationSeparatei_raw/3]).
-nifs([glCompressedTexImage3D_raw/9]).
-nifs([glDeleteQueries_raw/2]).
-nifs([glColorMaski_raw/5]).
-nifs([glFramebufferTexture_raw/4]).
-nifs([glDeleteTextures_raw/2]).
-nifs([glRenderbufferStorage_raw/4]).
-nifs([glIsEnabled_raw/1]).
-nifs([glDispatchCompute_raw/3]).
-nifs([glCompressedTexSubImage3D_raw/11]).
-nifs([glDeleteBuffers_raw/2]).
-nifs([glGenBuffers_raw/1]).
-nifs([glActiveTexture_raw/1]).
-nifs([glResumeTransformFeedback_raw/0]).
-nifs([glGetInteger64i_v_raw/3]).
-nifs([glFinish_raw/0]).
-nifs([glBlendEquationi_raw/2]).
-nifs([glCreateProgram_raw/0]).
-nifs([glTexStorage3DMultisample_raw/7]).
-nifs([glFramebufferTextureLayer_raw/5]).
-nifs([glDispatchComputeIndirect_raw/1]).
-nifs([glCullFace_raw/1]).
-nifs([glDeleteVertexArrays_raw/2]).
-nifs([glGetProgramiv_raw/3]).
-nifs([glUseProgram_raw/1]).
-nifs([glReadPixels_raw/7]).
-nifs([glDeleteProgram_raw/1]).
-nifs([glBindTransformFeedback_raw/2]).

-on_load(init_nif/0).

init_nif() ->
    PrivDir = code:priv_dir(?MODULE),
    NifPath = filename:join(PrivDir, "beam-gl"),
    ok = erlang:load_nif(NifPath, 0).

-doc """
foobar

It implements the `glDisable` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDisable) formore information.
""".
-spec disable(Cap :: enable_cap()) -> ok | {error, atom()}.
disable(Cap) ->
    NewCap = case Cap of
        sample_mask -> ?GL_SAMPLE_MASK;
        vertex_array -> ?GL_VERTEX_ARRAY;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        stencil_test -> ?GL_STENCIL_TEST;
        debug_output -> ?GL_DEBUG_OUTPUT;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        debug_output_synchronous -> ?GL_DEBUG_OUTPUT_SYNCHRONOUS;
        cull_face -> ?GL_CULL_FACE;
        sample_shading -> ?GL_SAMPLE_SHADING;
        scissor_test -> ?GL_SCISSOR_TEST;
        texture_2d -> ?GL_TEXTURE_2D;
        depth_test -> ?GL_DEPTH_TEST;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glDisable_raw(NewCap).

-doc """
undefined

It implements the `glMemoryBarrierByRegion` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glMemoryBarrierByRegion) formore information.
""".
-spec memory_barrier_by_region(Barriers :: memory_barrier_mask()) -> ok | {error, atom()}.
memory_barrier_by_region(Barriers) ->
    NewBarriers = lists:foldl(fun(Field, L) ->
        R = case Field of
            all_barrier_bits -> ?GL_ALL_BARRIER_BITS;
            atomic_counter_barrier_bit -> ?GL_ATOMIC_COUNTER_BARRIER_BIT;
            texture_update_barrier_bit -> ?GL_TEXTURE_UPDATE_BARRIER_BIT;
            shader_storage_barrier_bit -> ?GL_SHADER_STORAGE_BARRIER_BIT;
            texture_fetch_barrier_bit -> ?GL_TEXTURE_FETCH_BARRIER_BIT;
            transform_feedback_barrier_bit -> ?GL_TRANSFORM_FEEDBACK_BARRIER_BIT;
            framebuffer_barrier_bit -> ?GL_FRAMEBUFFER_BARRIER_BIT;
            pixel_buffer_barrier_bit -> ?GL_PIXEL_BUFFER_BARRIER_BIT;
            uniform_barrier_bit -> ?GL_UNIFORM_BARRIER_BIT;
            buffer_update_barrier_bit -> ?GL_BUFFER_UPDATE_BARRIER_BIT;
            command_barrier_bit -> ?GL_COMMAND_BARRIER_BIT;
            element_array_barrier_bit -> ?GL_ELEMENT_ARRAY_BARRIER_BIT;
            shader_image_access_barrier_bit -> ?GL_SHADER_IMAGE_ACCESS_BARRIER_BIT;
            vertex_attrib_array_barrier_bit -> ?GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
        end,
        L bor R
    end, 16#00, Barriers),
    glMemoryBarrierByRegion_raw(NewBarriers).

-doc """
Specify a two-dimensional texture subimage.

It implements the `glTexSubImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexSubImage2D) formore information.
""".
-spec tex_sub_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
tex_sub_image_2d(Target, Level, OffsetX, OffsetY, Width, Height, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, Width, Height, NewFormat, NewType, Pixels).

-doc """
Specify pixel arithmetic for RGB and alpha components separately.

It implements the `glBlendFuncSeparatei` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendFuncSeparatei) formore information.
""".
-spec blend_func_separate(
    Buffer :: pos_integer(),
    SourceRGB :: blending_factor(),
    DestinationRGB :: blending_factor(),
    SourceAlpha :: blending_factor(),
    DestinationAlpha :: blending_factor()
) -> ok | {error, atom()}.
blend_func_separate(Buffer, SourceRGB, DestinationRGB, SourceAlpha, DestinationAlpha) ->
    NewDestinationAlpha = case DestinationAlpha of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewSourceAlpha = case SourceAlpha of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewDestinationRGB = case DestinationRGB of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewSourceRGB = case SourceRGB of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,

    glBlendFuncSeparatei_raw(Buffer, NewSourceRGB, NewDestinationRGB, NewSourceAlpha, NewDestinationAlpha).

-doc """
Bind a renderbuffer to a renderbuffer target.

It implements the `glBindRenderbuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindRenderbuffer) formore information.
""".
-spec bind_render_buffer(
    Target :: renderbuffer_target(),
    Buffer :: render_buffer()
) -> ok | {error, atom()}.
bind_render_buffer(Target, Buffer) ->
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    glBindRenderbuffer_raw(NewTarget, Buffer).

-doc """
Enable or disable a generic vertex attribute
    array.

It implements the `glEnableVertexAttribArray` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glEnableVertexAttribArray) formore information.
""".
-spec enable_vertex_attrib_array(Index :: pos_integer()) -> ok | {error, atom()}.
enable_vertex_attrib_array(Index) ->

    glEnableVertexAttribArray_raw(Index).

-doc """
Specify the clear value for the stencil buffer.

It implements the `glClearStencil` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glClearStencil) formore information.
""".
-spec clear_stencil(S :: integer()) -> ok | {error, atom()}.
clear_stencil(S) ->

    glClearStencil_raw(S).

-doc """
Associate a vertex attribute and a vertex buffer binding for a vertex array object.

It implements the `glVertexAttribBinding` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttribBinding) formore information.
""".
-spec vertex_attrib_binding(
    AttribIndex :: pos_integer(),
    BindingIndex :: pos_integer()
) -> ok | {error, atom()}.
vertex_attrib_binding(AttribIndex, BindingIndex) ->

    glVertexAttribBinding_raw(AttribIndex, BindingIndex).

-doc """
Returns the information log for a program object.

It implements the `glGetProgramInfoLog` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramInfoLog) formore information.
""".
-spec get_program_info_log(
    Program :: program(),
    StringSize :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_program_info_log(Program, StringSize) ->

    glGetProgramInfoLog_raw(Program, StringSize).

-doc """
Simultaneously specify storage for all levels of a two-dimensional or one-dimensional array texture.

It implements the `glTexStorage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexStorage2D) formore information.
""".
-spec tex_storage_2d(
    Target :: texture_target(),
    Levels :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
tex_storage_2d(Target, Levels, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glTexStorage2D_raw(NewTarget, Levels, NewInternalFormat, Width, Height).

-doc """
Retrieve the info log string from a program pipeline object.

It implements the `glGetProgramPipelineInfoLog` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramPipelineInfoLog) formore information.
""".
-spec get_program_pipeline_info_log(
    Pipeline :: program_pipeline(),
    StringSize :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_program_pipeline_info_log(Pipeline, StringSize) ->

    glGetProgramPipelineInfoLog_raw(Pipeline, StringSize).

-doc """
undefined

It implements the `glGetBooleani_v` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetBooleani_v) formore information.
""".
-spec get_boolean(
    Target :: buffer_target_a_r_b(),
    Index :: pos_integer(),
    N :: pos_integer()
) -> {ok, Data :: [boolean()]} | {error, atom()}.
get_boolean(Target, Index, N) ->
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    glGetBooleani_v_raw(NewTarget, Index, N).

-doc """
undefined

It implements the `glIsEnabledi` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsEnabledi) formore information.
""".
-spec is_enabled(
    Capability :: enable_cap(),
    Index :: pos_integer()
) -> {ok, NoName :: boolean()} | {error, atom()}.
is_enabled(Capability, Index) ->
    NewCapability = case Capability of
        sample_mask -> ?GL_SAMPLE_MASK;
        vertex_array -> ?GL_VERTEX_ARRAY;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        stencil_test -> ?GL_STENCIL_TEST;
        debug_output -> ?GL_DEBUG_OUTPUT;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        debug_output_synchronous -> ?GL_DEBUG_OUTPUT_SYNCHRONOUS;
        cull_face -> ?GL_CULL_FACE;
        sample_shading -> ?GL_SAMPLE_SHADING;
        scissor_test -> ?GL_SCISSOR_TEST;
        texture_2d -> ?GL_TEXTURE_2D;
        depth_test -> ?GL_DEPTH_TEST;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glIsEnabledi_raw(NewCapability, Index).

-doc """
Set front and back stencil test actions.

It implements the `glStencilOp` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glStencilOp) formore information.
""".
-spec stencil_op(
    Fail :: stencil_op(),
    ZFail :: stencil_op(),
    ZPass :: stencil_op()
) -> ok | {error, atom()}.
stencil_op(Fail, ZFail, ZPass) ->
    NewZPass = case ZPass of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewZFail = case ZFail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewFail = case Fail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,

    glStencilOp_raw(NewFail, NewZFail, NewZPass).

-doc """
Determine if a name corresponds to a renderbuffer object.

It implements the `glIsRenderbuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsRenderbuffer) formore information.
""".
-spec is_renderbuffer(Buffer :: render_buffer()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_renderbuffer(Buffer) ->

    glIsRenderbuffer_raw(Buffer).

-doc """
undefined

It implements the `glGetShaderiv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetShaderiv) formore information.
""".
-spec get_shader_iv(
    Shader :: shader(),
    PName :: shader_parameter_name(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_shader_iv(Shader, PName, N) ->
    NewPName = case PName of
        shader_type -> ?GL_SHADER_TYPE;
        delete_status -> ?GL_DELETE_STATUS;
        compile_status -> ?GL_COMPILE_STATUS;
        shader_source_length -> ?GL_SHADER_SOURCE_LENGTH;
        info_log_length -> ?GL_INFO_LOG_LENGTH
    end,

    glGetShaderiv_raw(Shader, NewPName, N).

-doc """
Force execution of GL commands in finite time.

It implements the `glFlush` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFlush) formore information.
""".
-spec flush() -> ok | {error, atom()}.
flush() ->

    glFlush_raw().

-doc """
Pause transform feedback operations.

It implements the `glPauseTransformFeedback` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glPauseTransformFeedback) formore information.
""".
-spec pause_transform_feedback() -> ok | {error, atom()}.
pause_transform_feedback() ->

    glPauseTransformFeedback_raw().

-doc """
Determine if a name corresponds to a query object.

It implements the `glIsQuery` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsQuery) formore information.
""".
-spec is_query(Query :: query()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_query(Query) ->

    glIsQuery_raw(Query).

-doc """
Determine if a name corresponds to a transform feedback object.

It implements the `glIsTransformFeedback` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsTransformFeedback) formore information.
""".
-spec is_transform_feedback(Feedback :: transform_feedback()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_transform_feedback(Feedback) ->

    glIsTransformFeedback_raw(Feedback).

-doc """
Select a color buffer source for pixels.

It implements the `glReadBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glReadBuffer) formore information.
""".
-spec read_buffer(Source :: read_buffer_mode()) -> ok | {error, atom()}.
read_buffer(Source) ->
    NewSource = case Source of
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        none -> ?GL_NONE;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        back -> ?GL_BACK;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        front -> ?GL_FRONT;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,

    glReadBuffer_raw(NewSource).

-doc """
Delete transform feedback objects.

It implements the `glDeleteTransformFeedbacks` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteTransformFeedbacks) formore information.
""".
-spec delete_transform_feedbacks(
    N :: integer(),
    Feedbacks :: [transform_feedback()]
) -> ok | {error, atom()}.
delete_transform_feedbacks(N, Feedbacks) ->
    NewFeedbacks = << <<ID:32/native>> || ID <- Feedbacks >>,
    glDeleteTransformFeedbacks_raw(N, NewFeedbacks).

-doc """
Creates a shader object.

It implements the `glCreateShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCreateShader) formore information.
""".
-spec create_shader(Type :: shader_type()) -> {ok, NoName :: shader()} | {error, atom()}.
create_shader(Type) ->
    NewType = case Type of
        vertex_shader -> ?GL_VERTEX_SHADER;
        fragment_shader -> ?GL_FRAGMENT_SHADER;
        compute_shader -> ?GL_COMPUTE_SHADER;
        tess_evaluation_shader -> ?GL_TESS_EVALUATION_SHADER;
        geometry_shader -> ?GL_GEOMETRY_SHADER;
        tess_control_shader -> ?GL_TESS_CONTROL_SHADER
    end,

    glCreateShader_raw(NewType).

-doc """
Bind a program pipeline to the current context.

It implements the `glBindProgramPipeline` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindProgramPipeline) formore information.
""".
-spec bind_program_pipeline(Pipeline :: program_pipeline()) -> ok | {error, atom()}.
bind_program_pipeline(Pipeline) ->

    glBindProgramPipeline_raw(Pipeline).

-doc """
Define an array of generic vertex attribute data.

It implements the `glVertexAttribPointer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttribPointer) formore information.
""".
-spec vertex_attrib_pointer(
    Index :: pos_integer(),
    Size :: integer(),
    Type :: vertex_attrib_pointer_type(),
    Normalized :: boolean(),
    Stride :: integer(),
    Pointer :: integer()
) -> ok | {error, atom()}.
vertex_attrib_pointer(Index, Size, Type, Normalized, Stride, Pointer) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        float -> ?GL_FLOAT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        short -> ?GL_SHORT;
        fixed -> ?GL_FIXED;
        int_2_10_10_10_rev -> ?GL_INT_2_10_10_10_REV;
        half_float -> ?GL_HALF_FLOAT
    end,

    glVertexAttribPointer_raw(Index, Size, NewType, Normalized, Stride, Pointer).

-doc """
undefined

It implements the `glGetInteger64v` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetInteger64v) formore information.
""".
-spec get_integer64(
    PName :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_integer64(PName, N) ->
    NewPName = case PName of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        context_flags -> ?GL_CONTEXT_FLAGS;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetInteger64v_raw(NewPName, N).

-doc """
Draw multiple instances of a range of elements.

It implements the `glDrawArraysInstanced` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDrawArraysInstanced) formore information.
""".
-spec draw_arrays_instanced(
    Mode :: primitive_type(),
    First :: integer(),
    Count :: integer(),
    InstanceCount :: integer()
) -> ok | {error, atom()}.
draw_arrays_instanced(Mode, First, Count, InstanceCount) ->
    NewMode = case Mode of
        triangles_adjacency -> ?GL_TRIANGLES_ADJACENCY;
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        triangle_strip_adjacency -> ?GL_TRIANGLE_STRIP_ADJACENCY;
        lines -> ?GL_LINES;
        patches -> ?GL_PATCHES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        quads -> ?GL_QUADS;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP;
        lines_adjacency -> ?GL_LINES_ADJACENCY;
        line_strip_adjacency -> ?GL_LINE_STRIP_ADJACENCY
    end,

    glDrawArraysInstanced_raw(NewMode, First, Count, InstanceCount).

-doc """
Delete framebuffer objects.

It implements the `glDeleteFramebuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteFramebuffers) formore information.
""".
-spec delete_framebuffers(
    N :: integer(),
    Buffers :: [frame_buffer()]
) -> ok | {error, atom()}.
delete_framebuffers(N, Buffers) ->
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    glDeleteFramebuffers_raw(N, NewBuffers).

-doc """
Set the scale and units used to calculate depth values.

It implements the `glPolygonOffset` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glPolygonOffset) formore information.
""".
-spec polygon_offset(
    Factor :: float(),
    Units :: float()
) -> ok | {error, atom()}.
polygon_offset(Factor, Units) ->

    glPolygonOffset_raw(Factor, Units).

-doc """
undefined

It implements the `glEndTransformFeedback` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glEndTransformFeedback) formore information.
""".
-spec end_transform_feedback() -> ok | {error, atom()}.
end_transform_feedback() ->

    glEndTransformFeedback_raw().

-doc """
Set the active program object for a program pipeline object.

It implements the `glActiveShaderProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glActiveShaderProgram) formore information.
""".
-spec active_shader_program(
    Pipeline :: program_pipeline(),
    Program :: program()
) -> ok | {error, atom()}.
active_shader_program(Pipeline, Program) ->

    glActiveShaderProgram_raw(Pipeline, Program).

-doc """
Control the front and back writing of individual bits in the stencil planes.

It implements the `glStencilMask` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glStencilMask) formore information.
""".
-spec stencil_mask(Mask :: pos_integer()) -> ok | {error, atom()}.
stencil_mask(Mask) ->

    glStencilMask_raw(Mask).

-doc """
Copy all or part of the data store of a buffer object to the data store of another buffer object.

It implements the `glCopyBufferSubData` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCopyBufferSubData) formore information.
""".
-spec copy_buffer_sub_data(
    ReadTarget :: copy_buffer_sub_data_target(),
    WriteTarget :: copy_buffer_sub_data_target(),
    ReadOffset :: integer(),
    WriteOffset :: integer(),
    Size :: integer()
) -> ok | {error, atom()}.
copy_buffer_sub_data(ReadTarget, WriteTarget, ReadOffset, WriteOffset, Size) ->
    NewWriteTarget = case WriteTarget of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,
    NewReadTarget = case ReadTarget of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    glCopyBufferSubData_raw(NewReadTarget, NewWriteTarget, ReadOffset, WriteOffset, Size).

-doc """
undefined

It implements the `glDisableVertexAttribArray` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDisableVertexAttribArray) formore information.
""".
-spec disable_vertex_attrib_array(Index :: pos_integer()) -> ok | {error, atom()}.
disable_vertex_attrib_array(Index) ->

    glDisableVertexAttribArray_raw(Index).

-doc """
Links a program object.

It implements the `glLinkProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glLinkProgram) formore information.
""".
-spec link_program(Program :: program()) -> ok | {error, atom()}.
link_program(Program) ->

    glLinkProgram_raw(Program).

-doc """
Compiles a shader object.

It implements the `glCompileShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCompileShader) formore information.
""".
-spec compile_shader(Shader :: shader()) -> ok | {error, atom()}.
compile_shader(Shader) ->

    glCompileShader_raw(Shader).

-doc """
Detaches a shader object from a program object to which it is attached.

It implements the `glDetachShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDetachShader) formore information.
""".
-spec detach_shader(
    Program :: program(),
    Shader :: shader()
) -> ok | {error, atom()}.
detach_shader(Program, Shader) ->

    glDetachShader_raw(Program, Shader).

-doc """
Perform a raw data copy between two images.

It implements the `glCopyImageSubData` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCopyImageSubData) formore information.
""".
-spec copy_image_sub_data(
    SrcName :: pos_integer(),
    SrcTarget :: copy_image_sub_data_target(),
    SrcLevel :: integer(),
    SrcX :: integer(),
    SrcY :: integer(),
    SrcZ :: integer(),
    DstName :: pos_integer(),
    DstTarget :: copy_image_sub_data_target(),
    DstLevel :: integer(),
    DstX :: integer(),
    DstY :: integer(),
    DstZ :: integer(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer()
) -> ok | {error, atom()}.
copy_image_sub_data(SrcName, SrcTarget, SrcLevel, SrcX, SrcY, SrcZ, DstName, DstTarget, DstLevel, DstX, DstY, DstZ, Width, Height, Depth) ->
    NewDstTarget = case DstTarget of
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,
    NewSrcTarget = case SrcTarget of
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glCopyImageSubData_raw(SrcName, NewSrcTarget, SrcLevel, SrcX, SrcY, SrcZ, DstName, NewDstTarget, DstLevel, DstX, DstY, DstZ, Width, Height, Depth).

-doc """
Specify a two-dimensional texture image in a compressed format.

It implements the `glCompressedTexImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCompressedTexImage2D) formore information.
""".
-spec compressed_tex_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Border :: integer(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_tex_image_2d(Target, Level, InternalFormat, Width, Height, Border, ImageSize, ImageData) ->
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glCompressedTexImage2D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Border, ImageSize, ImageData).

-doc """
Attaches a shader object to a program object.

It implements the `glAttachShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glAttachShader) formore information.
""".
-spec attach_shader(
    Program :: program(),
    Shader :: shader()
) -> ok | {error, atom()}.
attach_shader(Program, Shader) ->

    glAttachShader_raw(Program, Shader).

-doc """
Generate mipmaps for a specified texture object.

It implements the `glGenerateMipmap` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenerateMipmap) formore information.
""".
-spec generate_mipmap(Target :: texture_target()) -> ok | {error, atom()}.
generate_mipmap(Target) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glGenerateMipmap_raw(NewTarget).

-doc """
Check the completeness status of a framebuffer.

It implements the `glCheckFramebufferStatus` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCheckFramebufferStatus) formore information.
""".
-spec check_framebuffer_status(Target :: framebuffer_target()) -> {ok, NoName :: framebuffer_status()} | {error, atom()}.
check_framebuffer_status(Target) ->
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glCheckFramebufferStatus_raw(NewTarget).

-doc """
Determines if a name corresponds to a program object.

It implements the `glIsProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsProgram) formore information.
""".
-spec is_program(Program :: program()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_program(Program) ->

    glIsProgram_raw(Program).

-doc """
undefined

It implements the `glDisablei` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDisablei) formore information.
""".
-spec disable(
    Capability :: enable_cap(),
    Index :: pos_integer()
) -> ok | {error, atom()}.
disable(Capability, Index) ->
    NewCapability = case Capability of
        sample_mask -> ?GL_SAMPLE_MASK;
        vertex_array -> ?GL_VERTEX_ARRAY;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        stencil_test -> ?GL_STENCIL_TEST;
        debug_output -> ?GL_DEBUG_OUTPUT;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        debug_output_synchronous -> ?GL_DEBUG_OUTPUT_SYNCHRONOUS;
        cull_face -> ?GL_CULL_FACE;
        sample_shading -> ?GL_SAMPLE_SHADING;
        scissor_test -> ?GL_SCISSOR_TEST;
        texture_2d -> ?GL_TEXTURE_2D;
        depth_test -> ?GL_DEPTH_TEST;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glDisablei_raw(NewCapability, Index).

-doc """
Create a new sync object and insert it into the GL command stream.

It implements the `glFenceSync` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFenceSync) formore information.
""".
-spec fence_sync(
    Condition :: sync_condition(),
    Flags :: sync_behavior_flags()
) -> {ok, NoName :: sync()} | {error, atom()}.
fence_sync(Condition, Flags) ->
    NewFlags = lists:foldl(fun(Field, L) ->
        R = case Field of
            none -> ?GL_NONE
        end,
        L bor R
    end, 16#00, Flags),    NewCondition = case Condition of
        sync_gpu_commands_complete -> ?GL_SYNC_GPU_COMMANDS_COMPLETE
    end,

    glFenceSync_raw(NewCondition, NewFlags).

-doc """
Determines if a name corresponds to a shader object.

It implements the `glIsShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsShader) formore information.
""".
-spec is_shader(Shader :: shader()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_shader(Shader) ->

    glIsShader_raw(Shader).

-doc """
Instruct the GL server to block until the specified sync object becomes signaled.

It implements the `glWaitSync` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glWaitSync) formore information.
""".
-spec wait_sync(
    Sync :: sync(),
    Flags :: sync_behavior_flags(),
    Timeout :: pos_integer()
) -> ok | {error, atom()}.
wait_sync(Sync, Flags, Timeout) ->
    NewFlags = lists:foldl(fun(Field, L) ->
        R = case Field of
            none -> ?GL_NONE
        end,
        L bor R
    end, 16#00, Flags),
    glWaitSync_raw(Sync, NewFlags, Timeout).

-doc """
Generate texture names.

It implements the `glGenTextures` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenTextures) formore information.
""".
-spec gen_textures(N :: pos_integer()) -> {ok, Textures :: [texture()]} | {error, atom()}.
gen_textures(N) ->

    glGenTextures_raw(N).

-doc """
undefined

It implements the `glEnablei` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glEnablei) formore information.
""".
-spec enable(
    Capability :: enable_cap(),
    Index :: pos_integer()
) -> ok | {error, atom()}.
enable(Capability, Index) ->
    NewCapability = case Capability of
        sample_mask -> ?GL_SAMPLE_MASK;
        vertex_array -> ?GL_VERTEX_ARRAY;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        stencil_test -> ?GL_STENCIL_TEST;
        debug_output -> ?GL_DEBUG_OUTPUT;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        debug_output_synchronous -> ?GL_DEBUG_OUTPUT_SYNCHRONOUS;
        cull_face -> ?GL_CULL_FACE;
        sample_shading -> ?GL_SAMPLE_SHADING;
        scissor_test -> ?GL_SCISSOR_TEST;
        texture_2d -> ?GL_TEXTURE_2D;
        depth_test -> ?GL_DEPTH_TEST;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glEnablei_raw(NewCapability, Index).

-doc """
Validates a program object.

It implements the `glValidateProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glValidateProgram) formore information.
""".
-spec validate_program(Program :: program()) -> ok | {error, atom()}.
validate_program(Program) ->

    glValidateProgram_raw(Program).

-doc """
Bind a buffer to a vertex buffer bind point.

It implements the `glBindVertexBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindVertexBuffer) formore information.
""".
-spec bind_vertex_buffer(
    BindingIndex :: pos_integer(),
    Buffer :: buffer(),
    Offset :: integer(),
    Stride :: integer()
) -> ok | {error, atom()}.
bind_vertex_buffer(BindingIndex, Buffer, Offset, Stride) ->

    glBindVertexBuffer_raw(BindingIndex, Buffer, Offset, Stride).

-doc """
Return a string describing the current GL connection.

It implements the `glGetStringi` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetStringi) formore information.
""".
-spec get_string(
    Name :: string_name(),
    Index :: pos_integer()
) -> {ok, NoName :: string() | binary()} | {error, atom()}.
get_string(Name, Index) ->
    NewName = case Name of
        vendor -> ?GL_VENDOR;
        renderer -> ?GL_RENDERER;
        extensions -> ?GL_EXTENSIONS;
        shading_language_version -> ?GL_SHADING_LANGUAGE_VERSION;
        version -> ?GL_VERSION
    end,

    glGetStringi_raw(NewName, Index).

-doc """
Specify a three-dimensional texture subimage.

It implements the `glTexSubImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexSubImage3D) formore information.
""".
-spec tex_sub_image_3d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    OffsetZ :: integer(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
tex_sub_image_3d(Target, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glTexSubImage3D_raw(NewTarget, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, NewFormat, NewType, Pixels).

-doc """
Defines a barrier ordering memory transactions.

It implements the `glMemoryBarrier` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glMemoryBarrier) formore information.
""".
-spec memory_barrier(Barriers :: memory_barrier_mask()) -> ok | {error, atom()}.
memory_barrier(Barriers) ->
    NewBarriers = lists:foldl(fun(Field, L) ->
        R = case Field of
            all_barrier_bits -> ?GL_ALL_BARRIER_BITS;
            atomic_counter_barrier_bit -> ?GL_ATOMIC_COUNTER_BARRIER_BIT;
            texture_update_barrier_bit -> ?GL_TEXTURE_UPDATE_BARRIER_BIT;
            shader_storage_barrier_bit -> ?GL_SHADER_STORAGE_BARRIER_BIT;
            texture_fetch_barrier_bit -> ?GL_TEXTURE_FETCH_BARRIER_BIT;
            transform_feedback_barrier_bit -> ?GL_TRANSFORM_FEEDBACK_BARRIER_BIT;
            framebuffer_barrier_bit -> ?GL_FRAMEBUFFER_BARRIER_BIT;
            pixel_buffer_barrier_bit -> ?GL_PIXEL_BUFFER_BARRIER_BIT;
            uniform_barrier_bit -> ?GL_UNIFORM_BARRIER_BIT;
            buffer_update_barrier_bit -> ?GL_BUFFER_UPDATE_BARRIER_BIT;
            command_barrier_bit -> ?GL_COMMAND_BARRIER_BIT;
            element_array_barrier_bit -> ?GL_ELEMENT_ARRAY_BARRIER_BIT;
            shader_image_access_barrier_bit -> ?GL_SHADER_IMAGE_ACCESS_BARRIER_BIT;
            vertex_attrib_array_barrier_bit -> ?GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
        end,
        L bor R
    end, 16#00, Barriers),
    glMemoryBarrier_raw(NewBarriers).

-doc """
Copy pixels into a 2D texture image.

It implements the `glCopyTexImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCopyTexImage2D) formore information.
""".
-spec copy_tex_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer(),
    Border :: integer()
) -> ok | {error, atom()}.
copy_tex_image_2d(Target, Level, InternalFormat, X, Y, Width, Height, Border) ->
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glCopyTexImage2D_raw(NewTarget, Level, NewInternalFormat, X, Y, Width, Height, Border).

-doc """
Bind a vertex array object.

It implements the `glBindVertexArray` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindVertexArray) formore information.
""".
-spec bind_vertex_array(Array :: vertex_array()) -> ok | {error, atom()}.
bind_vertex_array(Array) ->

    glBindVertexArray_raw(Array).

-doc """
Copy a block of pixels from one framebuffer object to another.

It implements the `glBlitFramebuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlitFramebuffer) formore information.
""".
-spec blit_framebuffer(
    SrcX0 :: integer(),
    SrcY0 :: integer(),
    SrcX1 :: integer(),
    SrcY1 :: integer(),
    DstX0 :: integer(),
    DstY0 :: integer(),
    DstX1 :: integer(),
    DstY1 :: integer(),
    Mask :: clear_buffer_mask(),
    Filter :: blit_framebuffer_filter()
) -> ok | {error, atom()}.
blit_framebuffer(SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, Mask, Filter) ->
    NewFilter = case Filter of
        linear -> ?GL_LINEAR;
        nearest -> ?GL_NEAREST
    end,
    NewMask = lists:foldl(fun(Field, L) ->
        R = case Field of
            stencil_buffer_bit -> ?GL_STENCIL_BUFFER_BIT;
            color_buffer_bit -> ?GL_COLOR_BUFFER_BIT;
            depth_buffer_bit -> ?GL_DEPTH_BUFFER_BIT
        end,
        L bor R
    end, 16#00, Mask),
    glBlitFramebuffer_raw(SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, NewMask, NewFilter).

-doc """
Control the front and/or back writing of individual bits in the stencil planes.

It implements the `glStencilMaskSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glStencilMaskSeparate) formore information.
""".
-spec stencil_mask_separate(
    Face :: triangle_face(),
    Mask :: pos_integer()
) -> ok | {error, atom()}.
stencil_mask_separate(Face, Mask) ->
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glStencilMaskSeparate_raw(NewFace, Mask).

-doc """
Specify a callback to receive debugging messages from the GL.

It implements the `glDebugMessageCallback` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDebugMessageCallback) formore information.
""".
-spec debug_message_callback() -> ok | {error, atom()}.
debug_message_callback() ->

    glDebugMessageCallback_raw().

-doc """
Specify the organization of vertex arrays.

It implements the `glVertexAttribFormat` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttribFormat) formore information.
""".
-spec vertex_attrib_format(
    AttribIndex :: pos_integer(),
    Size :: integer(),
    Type :: vertex_attrib_type(),
    Normalized :: boolean(),
    RelativeOffset :: pos_integer()
) -> ok | {error, atom()}.
vertex_attrib_format(AttribIndex, Size, Type, Normalized, RelativeOffset) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        float -> ?GL_FLOAT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        short -> ?GL_SHORT;
        fixed -> ?GL_FIXED;
        int_2_10_10_10_rev -> ?GL_INT_2_10_10_10_REV;
        half_float -> ?GL_HALF_FLOAT
    end,

    glVertexAttribFormat_raw(AttribIndex, Size, NewType, Normalized, RelativeOffset).

-doc """
Define the scissor box.

It implements the `glScissor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glScissor) formore information.
""".
-spec scissor(
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
scissor(X, Y, Width, Height) ->

    glScissor_raw(X, Y, Width, Height).

-doc """
Establish the data storage, format, dimensions, and number of samples of a multisample texture's image.

It implements the `glTexImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexImage2D) formore information.
""".
-spec tex_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Border :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
tex_image_2d(Target, Level, InternalFormat, Width, Height, Border, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glTexImage2D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Border, NewFormat, NewType, Pixels).

-doc """
Return error information.

It implements the `glGetError` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetError) formore information.
""".
-spec get_error() -> {ok, NoName :: error_code()} | {error, atom()}.
get_error() ->

    glGetError_raw().

-doc """
Determine if a name corresponds to a vertex array object.

It implements the `glIsVertexArray` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsVertexArray) formore information.
""".
-spec is_vertex_array(Array :: vertex_array()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_vertex_array(Array) ->

    glIsVertexArray_raw(Array).

-doc """
Bind a named texture to a texturing target.

It implements the `glBindTexture` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindTexture) formore information.
""".
-spec bind_texture(
    Target :: texture_target(),
    Texture :: texture()
) -> ok | {error, atom()}.
bind_texture(Target, Texture) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glBindTexture_raw(NewTarget, Texture).

-doc """
Deletes a shader object.

It implements the `glDeleteShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteShader) formore information.
""".
-spec delete_shader(Shader :: shader()) -> ok | {error, atom()}.
delete_shader(Shader) ->

    glDeleteShader_raw(Shader).

-doc """
undefined

It implements the `glGetIntegeri_v` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegeri_v) formore information.
""".
-spec get_integer(
    Target :: get_p_name(),
    Index :: pos_integer(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_integer(Target, Index, N) ->
    NewTarget = case Target of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        context_flags -> ?GL_CONTEXT_FLAGS;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetIntegeri_v_raw(NewTarget, Index, N).

-doc """
Set front and back function and reference value for stencil testing.

It implements the `glStencilFunc` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glStencilFunc) formore information.
""".
-spec stencil_func(
    Function :: stencil_function(),
    Ref :: integer(),
    Mask :: pos_integer()
) -> ok | {error, atom()}.
stencil_func(Function, Ref, Mask) ->
    NewFunction = case Function of
        equal -> ?GL_EQUAL;
        always -> ?GL_ALWAYS;
        never -> ?GL_NEVER;
        lequal -> ?GL_LEQUAL;
        gequal -> ?GL_GEQUAL;
        greater -> ?GL_GREATER;
        notequal -> ?GL_NOTEQUAL;
        less -> ?GL_LESS
    end,

    glStencilFunc_raw(NewFunction, Ref, Mask).

-doc """
Reserve program pipeline object names.

It implements the `glGenProgramPipelines` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenProgramPipelines) formore information.
""".
-spec gen_program_pipelines(N :: pos_integer()) -> {ok, Pipelines :: [program_pipeline()]} | {error, atom()}.
gen_program_pipelines(N) ->

    glGenProgramPipelines_raw(N).

-doc """
Determine if a name corresponds to a sync object.

It implements the `glIsSync` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsSync) formore information.
""".
-spec is_sync(Sync :: sync()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_sync(Sync) ->

    glIsSync_raw(Sync).

-doc """
Attach a buffer object's data store to a buffer texture object.

It implements the `glTexBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexBuffer) formore information.
""".
-spec tex_buffer(
    Target :: texture_target(),
    InternalFormat :: sized_internal_format(),
    Buffer :: buffer()
) -> ok | {error, atom()}.
tex_buffer(Target, InternalFormat, Buffer) ->
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glTexBuffer_raw(NewTarget, NewInternalFormat, Buffer).

-doc """
Render primitives from array data.

It implements the `glDrawArrays` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDrawArrays) formore information.
""".
-spec draw_arrays(
    Mode :: primitive_type(),
    First :: integer(),
    Count :: integer()
) -> ok | {error, atom()}.
draw_arrays(Mode, First, Count) ->
    NewMode = case Mode of
        triangles_adjacency -> ?GL_TRIANGLES_ADJACENCY;
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        triangle_strip_adjacency -> ?GL_TRIANGLE_STRIP_ADJACENCY;
        lines -> ?GL_LINES;
        patches -> ?GL_PATCHES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        quads -> ?GL_QUADS;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP;
        lines_adjacency -> ?GL_LINES_ADJACENCY;
        line_strip_adjacency -> ?GL_LINE_STRIP_ADJACENCY
    end,

    glDrawArrays_raw(NewMode, First, Count).

-doc """
undefined

It implements the `glFramebufferTexture2D` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFramebufferTexture2D) formore information.
""".
-spec framebuffer_texture_2d(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    TextureTarget :: texture_target(),
    Texture :: texture(),
    Level :: integer()
) -> ok | {error, atom()}.
framebuffer_texture_2d(Target, Attachment, TextureTarget, Texture, Level) ->
    NewTextureTarget = case TextureTarget of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glFramebufferTexture2D_raw(NewTarget, NewAttachment, NewTextureTarget, Texture, Level).

-doc """
undefined

It implements the `glVertexAttribIFormat` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttribIFormat) formore information.
""".
-spec vertex_attrib_i_format(
    AttribIndex :: pos_integer(),
    Size :: integer(),
    Type :: vertex_attrib_i_type(),
    RelativeOffset :: pos_integer()
) -> ok | {error, atom()}.
vertex_attrib_i_format(AttribIndex, Size, Type, RelativeOffset) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        short -> ?GL_SHORT
    end,

    glVertexAttribIFormat_raw(AttribIndex, Size, NewType, RelativeOffset).

-doc """
Specify the width of rasterized lines.

It implements the `glLineWidth` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glLineWidth) formore information.
""".
-spec line_width(Width :: float()) -> ok | {error, atom()}.
line_width(Width) ->

    glLineWidth_raw(Width).

-doc """
Enable or disable writing into the depth buffer.

It implements the `glDepthMask` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDepthMask) formore information.
""".
-spec depth_mask(Flag :: boolean()) -> ok | {error, atom()}.
depth_mask(Flag) ->

    glDepthMask_raw(Flag).

-doc """
Set the RGB blend equation and the alpha blend equation separately.

It implements the `glBlendEquationSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendEquationSeparate) formore information.
""".
-spec blend_equation_separate(
    ModeRGB :: blend_equation_mode_e_x_t(),
    ModeAlpha :: blend_equation_mode_e_x_t()
) -> ok | {error, atom()}.
blend_equation_separate(ModeRGB, ModeAlpha) ->
    NewModeAlpha = case ModeAlpha of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,
    NewModeRGB = case ModeRGB of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,

    glBlendEquationSeparate_raw(NewModeRGB, NewModeAlpha).

-doc """
Copy a three-dimensional texture subimage.

It implements the `glCopyTexSubImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCopyTexSubImage3D) formore information.
""".
-spec copy_tex_sub_image_3d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    OffsetZ :: integer(),
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
copy_tex_sub_image_3d(Target, Level, OffsetX, OffsetY, OffsetZ, X, Y, Width, Height) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glCopyTexSubImage3D_raw(NewTarget, Level, OffsetX, OffsetY, OffsetZ, X, Y, Width, Height).

-doc """
Set the viewport.

It implements the `glViewport` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glViewport) formore information.
""".
-spec viewport(
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
viewport(X, Y, Width, Height) ->

    glViewport_raw(X, Y, Width, Height).

-doc """
Specify a three-dimensional texture image.

It implements the `glTexImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexImage3D) formore information.
""".
-spec tex_image_3d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    Border :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
tex_image_3d(Target, Level, InternalFormat, Width, Height, Depth, Border, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glTexImage3D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Depth, Border, NewFormat, NewType, Pixels).

-doc """
Delete renderbuffer objects.

It implements the `glDeleteRenderbuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteRenderbuffers) formore information.
""".
-spec delete_render_buffers(
    N :: integer(),
    Buffers :: [render_buffer()]
) -> ok | {error, atom()}.
delete_render_buffers(N, Buffers) ->
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    glDeleteRenderbuffers_raw(N, NewBuffers).

-doc """
Specify a two-dimensional texture subimage in a compressed format.

It implements the `glCompressedTexSubImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCompressedTexSubImage2D) formore information.
""".
-spec compressed_tex_sub_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: internal_format(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_tex_sub_image_2d(Target, Level, OffsetX, OffsetY, Width, Height, Format, ImageSize, ImageData) ->
    NewFormat = case Format of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glCompressedTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, Width, Height, NewFormat, ImageSize, ImageData).

-doc """
Bind a named buffer object.

It implements the `glBindBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindBuffer) formore information.
""".
-spec bind_buffer(
    Target :: buffer_target_a_r_b(),
    Buffer :: buffer()
) -> ok | {error, atom()}.
bind_buffer(Target, Buffer) ->
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    glBindBuffer_raw(NewTarget, Buffer).

-doc """
Modify the rate at which generic vertex attributes
    advance.

It implements the `glVertexBindingDivisor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexBindingDivisor) formore information.
""".
-spec vertex_binding_divisor(
    Index :: pos_integer(),
    Divisor :: pos_integer()
) -> ok | {error, atom()}.
vertex_binding_divisor(Index, Divisor) ->

    glVertexBindingDivisor_raw(Index, Divisor).

-doc """
Specify pixel arithmetic.

It implements the `glBlendFunci` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendFunci) formore information.
""".
-spec blend_func(
    Buffer :: pos_integer(),
    SourceFactor :: blending_factor(),
    DestinationFactor :: blending_factor()
) -> ok | {error, atom()}.
blend_func(Buffer, SourceFactor, DestinationFactor) ->
    NewDestinationFactor = case DestinationFactor of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewSourceFactor = case SourceFactor of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,

    glBlendFunci_raw(Buffer, NewSourceFactor, NewDestinationFactor).

-doc """
Creates and initializes a buffer object's data
    store.

It implements the `glBufferData` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBufferData) formore information.
""".
-spec buffer_data(
    Target :: buffer_target_a_r_b(),
    Size :: integer(),
    Data :: undefined | binary(),
    Usage :: buffer_usage_a_r_b()
) -> ok | {error, atom()}.
buffer_data(Target, Size, Data, Usage) ->
    NewUsage = case Usage of
        stream_draw -> ?GL_STREAM_DRAW;
        dynamic_read -> ?GL_DYNAMIC_READ;
        static_copy -> ?GL_STATIC_COPY;
        stream_read -> ?GL_STREAM_READ;
        stream_copy -> ?GL_STREAM_COPY;
        static_read -> ?GL_STATIC_READ;
        dynamic_copy -> ?GL_DYNAMIC_COPY;
        static_draw -> ?GL_STATIC_DRAW;
        dynamic_draw -> ?GL_DYNAMIC_DRAW
    end,
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    glBufferData_raw(NewTarget, Size, Data, NewUsage).

-doc """
Returns the source code string from a shader object.

It implements the `glGetShaderSource` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetShaderSource) formore information.
""".
-spec get_shader_source(
    Shader :: shader(),
    StringSize :: pos_integer()
) -> {ok, Source :: binary()} | {error, atom()}.
get_shader_source(Shader, StringSize) ->

    glGetShaderSource_raw(Shader, StringSize).

-doc """
Specify multisample coverage parameters.

It implements the `glSampleCoverage` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glSampleCoverage) formore information.
""".
-spec sample_coverage(
    Value :: float(),
    Invert :: boolean()
) -> ok | {error, atom()}.
sample_coverage(Value, Invert) ->

    glSampleCoverage_raw(Value, Invert).

-doc """
Set front and/or back stencil test actions.

It implements the `glStencilOpSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glStencilOpSeparate) formore information.
""".
-spec stencil_op_separate(
    Face :: triangle_face(),
    StencilFail :: stencil_op(),
    DepthPassFail :: stencil_op(),
    DepthPassPass :: stencil_op()
) -> ok | {error, atom()}.
stencil_op_separate(Face, StencilFail, DepthPassFail, DepthPassPass) ->
    NewDepthPassPass = case DepthPassPass of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewDepthPassFail = case DepthPassFail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewStencilFail = case StencilFail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glStencilOpSeparate_raw(NewFace, NewStencilFail, NewDepthPassFail, NewDepthPassPass).

-doc """
Inject an application-supplied message into the debug message queue.

It implements the `glDebugMessageInsert` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDebugMessageInsert) formore information.
""".
-spec debug_message_insert(
    Source :: debug_source(),
    Type :: debug_type(),
    Id :: pos_integer(),
    Severity :: debug_severity(),
    Length :: integer(),
    Message :: string() | binary()
) -> ok | {error, atom()}.
debug_message_insert(Source, Type, Id, Severity, Length, Message) ->
    NewSeverity = case Severity of
        debug_severity_notification -> ?GL_DEBUG_SEVERITY_NOTIFICATION;
        debug_severity_high -> ?GL_DEBUG_SEVERITY_HIGH;
        debug_severity_low -> ?GL_DEBUG_SEVERITY_LOW;
        dont_care -> ?GL_DONT_CARE;
        debug_severity_medium -> ?GL_DEBUG_SEVERITY_MEDIUM
    end,
    NewType = case Type of
        debug_type_undefined_behavior -> ?GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR;
        debug_type_push_group -> ?GL_DEBUG_TYPE_PUSH_GROUP;
        debug_type_portability -> ?GL_DEBUG_TYPE_PORTABILITY;
        debug_type_pop_group -> ?GL_DEBUG_TYPE_POP_GROUP;
        debug_type_deprecated_behavior -> ?GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR;
        debug_type_error -> ?GL_DEBUG_TYPE_ERROR;
        dont_care -> ?GL_DONT_CARE;
        debug_type_performance -> ?GL_DEBUG_TYPE_PERFORMANCE;
        debug_type_marker -> ?GL_DEBUG_TYPE_MARKER;
        debug_type_other -> ?GL_DEBUG_TYPE_OTHER
    end,
    NewSource = case Source of
        debug_source_window_system -> ?GL_DEBUG_SOURCE_WINDOW_SYSTEM;
        debug_source_other -> ?GL_DEBUG_SOURCE_OTHER;
        debug_source_api -> ?GL_DEBUG_SOURCE_API;
        debug_source_shader_compiler -> ?GL_DEBUG_SOURCE_SHADER_COMPILER;
        debug_source_application -> ?GL_DEBUG_SOURCE_APPLICATION;
        dont_care -> ?GL_DONT_CARE;
        debug_source_third_party -> ?GL_DEBUG_SOURCE_THIRD_PARTY
    end,

    glDebugMessageInsert_raw(NewSource, NewType, Id, NewSeverity, Length, Message).

-doc """
Specify pixel arithmetic.

It implements the `glBlendFunc` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendFunc) formore information.
""".
-spec blend_func(
    SourceFactor :: blending_factor(),
    DestinationFactor :: blending_factor()
) -> ok | {error, atom()}.
blend_func(SourceFactor, DestinationFactor) ->
    NewDestinationFactor = case DestinationFactor of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewSourceFactor = case SourceFactor of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,

    glBlendFunc_raw(NewSourceFactor, NewDestinationFactor).

-doc """
Bind stages of a program object to a program pipeline.

It implements the `glUseProgramStages` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glUseProgramStages) formore information.
""".
-spec use_program_stages(
    Pipeline :: program_pipeline(),
    Stages :: use_program_stage_mask(),
    Program :: program()
) -> ok | {error, atom()}.
use_program_stages(Pipeline, Stages, Program) ->
    NewStages = lists:foldl(fun(Field, L) ->
        R = case Field of
            tess_control_shader_bit -> ?GL_TESS_CONTROL_SHADER_BIT;
            all_shader_bits -> ?GL_ALL_SHADER_BITS;
            fragment_shader_bit -> ?GL_FRAGMENT_SHADER_BIT;
            tess_evaluation_shader_bit -> ?GL_TESS_EVALUATION_SHADER_BIT;
            vertex_shader_bit -> ?GL_VERTEX_SHADER_BIT;
            geometry_shader_bit -> ?GL_GEOMETRY_SHADER_BIT;
            compute_shader_bit -> ?GL_COMPUTE_SHADER_BIT
        end,
        L bor R
    end, 16#00, Stages),
    glUseProgramStages_raw(Pipeline, NewStages, Program).

-doc """
Specify implementation-specific hints.

It implements the `glHint` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glHint) formore information.
""".
-spec hint(
    Target :: hint_target(),
    Mode :: hint_mode()
) -> ok | {error, atom()}.
hint(Target, Mode) ->
    NewMode = case Mode of
        nicest -> ?GL_NICEST;
        dont_care -> ?GL_DONT_CARE;
        fastest -> ?GL_FASTEST
    end,
    NewTarget = case Target of
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        program_binary_retrievable_hint -> ?GL_PROGRAM_BINARY_RETRIEVABLE_HINT;
        generate_mipmap_hint -> ?GL_GENERATE_MIPMAP_HINT
    end,

    glHint_raw(NewTarget, NewMode).

-doc """
Pop the active debug group.

It implements the `glPopDebugGroup` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glPopDebugGroup) formore information.
""".
-spec pop_debug_group() -> ok | {error, atom()}.
pop_debug_group() ->

    glPopDebugGroup_raw().

-doc """
foobar

It implements the `glGetBooleanv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetBooleanv) formore information.
""".
-spec get_boolean(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [boolean()]} | {error, atom()}.
get_boolean(Name, N) ->
    NewName = case Name of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        context_flags -> ?GL_CONTEXT_FLAGS;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetBooleanv_raw(NewName, N).

-doc """
Start transform feedback operation.

It implements the `glBeginTransformFeedback` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBeginTransformFeedback) formore information.
""".
-spec begin_transform_feedback(PrimitiveMode :: primitive_type()) -> ok | {error, atom()}.
begin_transform_feedback(PrimitiveMode) ->
    NewPrimitiveMode = case PrimitiveMode of
        triangles_adjacency -> ?GL_TRIANGLES_ADJACENCY;
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        triangle_strip_adjacency -> ?GL_TRIANGLE_STRIP_ADJACENCY;
        lines -> ?GL_LINES;
        patches -> ?GL_PATCHES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        quads -> ?GL_QUADS;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP;
        lines_adjacency -> ?GL_LINES_ADJACENCY;
        line_strip_adjacency -> ?GL_LINE_STRIP_ADJACENCY
    end,

    glBeginTransformFeedback_raw(NewPrimitiveMode).

-doc """
Check if the rendering context has not been lost due to software or hardware issues.

It implements the `glGetGraphicsResetStatus` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetGraphicsResetStatus) formore information.
""".
-spec get_graphics_reset_status() -> {ok, NoName :: graphics_reset_status()} | {error, atom()}.
get_graphics_reset_status() ->

    glGetGraphicsResetStatus_raw().

-doc """
Set the blend color.

It implements the `glBlendColor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendColor) formore information.
""".
-spec blend_color(
    Red :: float(),
    Green :: float(),
    Blue :: float(),
    Alpha :: float()
) -> ok | {error, atom()}.
blend_color(Red, Green, Blue, Alpha) ->

    glBlendColor_raw(Red, Green, Blue, Alpha).

-doc """
Specify storage for a two-dimensional multisample texture.

It implements the `glTexStorage2DMultisample` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexStorage2DMultisample) formore information.
""".
-spec tex_storage_2d_multisample(
    Target :: texture_target(),
    Samples :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer(),
    Height :: integer(),
    FixedSampleLocations :: boolean()
) -> ok | {error, atom()}.
tex_storage_2d_multisample(Target, Samples, InternalFormat, Width, Height, FixedSampleLocations) ->
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glTexStorage2DMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height, FixedSampleLocations).

-doc """
Determine if a name corresponds to a program pipeline object.

It implements the `glIsProgramPipeline` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsProgramPipeline) formore information.
""".
-spec is_program_pipeline(Piepline :: program_pipeline()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_program_pipeline(Piepline) ->

    glIsProgramPipeline_raw(Piepline).

-doc """
Delimit the boundaries of a query object.

It implements the `glBeginQuery` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBeginQuery) formore information.
""".
-spec begin_query(
    Target :: query_target(),
    Query :: query()
) -> ok | {error, atom()}.
begin_query(Target, Query) ->
    NewTarget = case Target of
        primitives_generated -> ?GL_PRIMITIVES_GENERATED;
        transform_feedback_primitives_written -> ?GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
        any_samples_passed -> ?GL_ANY_SAMPLES_PASSED;
        any_samples_passed_conservative -> ?GL_ANY_SAMPLES_PASSED_CONSERVATIVE
    end,

    glBeginQuery_raw(NewTarget, Query).

-doc """
Attach a range of a buffer object's data store to a buffer texture object.

It implements the `glTexBufferRange` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexBufferRange) formore information.
""".
-spec tex_buffer_range(
    Target :: texture_target(),
    InternalFormat :: sized_internal_format(),
    Buffer :: buffer(),
    Offset :: integer(),
    Size :: integer()
) -> ok | {error, atom()}.
tex_buffer_range(Target, InternalFormat, Buffer, Offset, Size) ->
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glTexBufferRange_raw(NewTarget, NewInternalFormat, Buffer, Offset, Size).

-doc """
Release resources consumed by the implementation's shader compiler.

It implements the `glReleaseShaderCompiler` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glReleaseShaderCompiler) formore information.
""".
-spec release_shader_compiler() -> ok | {error, atom()}.
release_shader_compiler() ->

    glReleaseShaderCompiler_raw().

-doc """
undefined

It implements the `glEndQuery` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glEndQuery) formore information.
""".
-spec end_query(Target :: query_target()) -> ok | {error, atom()}.
end_query(Target) ->
    NewTarget = case Target of
        primitives_generated -> ?GL_PRIMITIVES_GENERATED;
        transform_feedback_primitives_written -> ?GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
        any_samples_passed -> ?GL_ANY_SAMPLES_PASSED;
        any_samples_passed_conservative -> ?GL_ANY_SAMPLES_PASSED_CONSERVATIVE
    end,

    glEndQuery_raw(NewTarget).

-doc """
Delete named sampler objects.

It implements the `glDeleteSamplers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteSamplers) formore information.
""".
-spec delete_samplers(
    N :: integer(),
    Samplers :: [sampler()]
) -> ok | {error, atom()}.
delete_samplers(N, Samplers) ->
    NewSamplers = << <<ID:32/native>> || ID <- Samplers >>,
    glDeleteSamplers_raw(N, NewSamplers).

-doc """
Replaces the source code in a shader object.

It implements the `glShaderSource` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glShaderSource) formore information.
""".
-spec shader_source(
    Shader :: shader(),
    Source :: [string() | binary()]
) -> ok | {error, atom()}.
shader_source(Shader, Source) ->
    SourceNew = lists:map(fun
        (SourceItem) when is_list(SourceItem) -> list_to_binary(SourceItem);
        (SourceItem) when is_binary(SourceItem) -> SourceItem
    end, Source),
    glShaderSource_raw(Shader, SourceNew).

-doc """
Clear buffers to preset values.

It implements the `glClear` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glClear) formore information.
""".
-spec clear(Mask :: clear_buffer_mask()) -> ok | {error, atom()}.
clear(Mask) ->
    NewMask = lists:foldl(fun(Field, L) ->
        R = case Field of
            stencil_buffer_bit -> ?GL_STENCIL_BUFFER_BIT;
            color_buffer_bit -> ?GL_COLOR_BUFFER_BIT;
            depth_buffer_bit -> ?GL_DEPTH_BUFFER_BIT
        end,
        L bor R
    end, 16#00, Mask),
    glClear_raw(NewMask).

-doc """
Attach a renderbuffer as a logical buffer of a framebuffer object.

It implements the `glFramebufferRenderbuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFramebufferRenderbuffer) formore information.
""".
-spec framebuffer_renderbuffer(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    RenderbufferTarget :: renderbuffer_target(),
    Renderbuffer :: render_buffer()
) -> ok | {error, atom()}.
framebuffer_renderbuffer(Target, Attachment, RenderbufferTarget, Renderbuffer) ->
    NewRenderbufferTarget = case RenderbufferTarget of
        renderbuffer -> ?GL_RENDERBUFFER
    end,
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glFramebufferRenderbuffer_raw(NewTarget, NewAttachment, NewRenderbufferTarget, Renderbuffer).

-doc """
Validate a program pipeline object against current GL state.

It implements the `glValidateProgramPipeline` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glValidateProgramPipeline) formore information.
""".
-spec validate_program_pipeline(Pipeline :: program_pipeline()) -> ok | {error, atom()}.
validate_program_pipeline(Pipeline) ->

    glValidateProgramPipeline_raw(Pipeline).

-doc """
Specifies minimum rate at which sample shading takes place.

It implements the `glMinSampleShading` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glMinSampleShading) formore information.
""".
-spec min_sample_shading(Value :: float()) -> ok | {error, atom()}.
min_sample_shading(Value) ->

    glMinSampleShading_raw(Value).

-doc """
Delete a sync object.

It implements the `glDeleteSync` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteSync) formore information.
""".
-spec delete_sync(Sync :: sync()) -> ok | {error, atom()}.
delete_sync(Sync) ->

    glDeleteSync_raw(Sync).

-doc """
Read a block of pixels from the frame buffer.

It implements the `glReadnPixels` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glReadnPixels) formore information.
""".
-spec read_n_pixels(
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    DataSize :: pos_integer()
) -> {ok, Data :: binary()} | {error, atom()}.
read_n_pixels(X, Y, Width, Height, Format, Type, DataSize) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    glReadnPixels_raw(X, Y, Width, Height, NewFormat, NewType, DataSize).

-doc """
Copy a two-dimensional texture subimage.

It implements the `glCopyTexSubImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCopyTexSubImage2D) formore information.
""".
-spec copy_tex_sub_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
copy_tex_sub_image_2d(Target, Level, OffsetX, OffsetY, X, Y, Width, Height) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glCopyTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, X, Y, Width, Height).

-doc """
Set front and/or back function and reference value for stencil testing.

It implements the `glStencilFuncSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glStencilFuncSeparate) formore information.
""".
-spec stencil_func_separate(
    Face :: triangle_face(),
    Function :: stencil_function(),
    Ref :: integer(),
    Mask :: pos_integer()
) -> ok | {error, atom()}.
stencil_func_separate(Face, Function, Ref, Mask) ->
    NewFunction = case Function of
        equal -> ?GL_EQUAL;
        always -> ?GL_ALWAYS;
        never -> ?GL_NEVER;
        lequal -> ?GL_LEQUAL;
        gequal -> ?GL_GEQUAL;
        greater -> ?GL_GREATER;
        notequal -> ?GL_NOTEQUAL;
        less -> ?GL_LESS
    end,
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glStencilFuncSeparate_raw(NewFace, NewFunction, Ref, Mask).

-doc """
foobar

It implements the `glGetIntegerv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) formore information.
""".
-spec get_integer(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_integer(Name, N) ->
    NewName = case Name of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        context_flags -> ?GL_CONTEXT_FLAGS;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetIntegerv_raw(NewName, N).

-doc """
Generate vertex array object names.

It implements the `glGenVertexArrays` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenVertexArrays) formore information.
""".
-spec gen_vertex_arrays(N :: pos_integer()) -> {ok, Arrays :: [vertex_array()]} | {error, atom()}.
gen_vertex_arrays(N) ->

    glGenVertexArrays_raw(N).

-doc """
Generate renderbuffer object names.

It implements the `glGenRenderbuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenRenderbuffers) formore information.
""".
-spec gen_render_buffers(N :: pos_integer()) -> {ok, Buffers :: [render_buffer()]} | {error, atom()}.
gen_render_buffers(N) ->

    glGenRenderbuffers_raw(N).

-doc """
Specify the value used for depth buffer comparisons.

It implements the `glDepthFunc` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDepthFunc) formore information.
""".
-spec depth_func(Function :: depth_function()) -> ok | {error, atom()}.
depth_func(Function) ->
    NewFunction = case Function of
        equal -> ?GL_EQUAL;
        always -> ?GL_ALWAYS;
        never -> ?GL_NEVER;
        lequal -> ?GL_LEQUAL;
        gequal -> ?GL_GEQUAL;
        greater -> ?GL_GREATER;
        notequal -> ?GL_NOTEQUAL;
        less -> ?GL_LESS
    end,

    glDepthFunc_raw(NewFunction).

-doc """
Generate framebuffer object names.

It implements the `glGenFramebuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenFramebuffers) formore information.
""".
-spec gen_framebuffers(N :: pos_integer()) -> {ok, Buffers :: [frame_buffer()]} | {error, atom()}.
gen_framebuffers(N) ->

    glGenFramebuffers_raw(N).

-doc """
Modify the rate at which generic vertex attributes advance during instanced rendering.

It implements the `glVertexAttribDivisor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttribDivisor) formore information.
""".
-spec vertex_attrib_divisor(
    Index :: pos_integer(),
    Divisor :: pos_integer()
) -> ok | {error, atom()}.
vertex_attrib_divisor(Index, Divisor) ->

    glVertexAttribDivisor_raw(Index, Divisor).

-doc """
Delete program pipeline objects.

It implements the `glDeleteProgramPipelines` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteProgramPipelines) formore information.
""".
-spec delete_program_pipelines(
    N :: integer(),
    Pipelines :: [program_pipeline()]
) -> ok | {error, atom()}.
delete_program_pipelines(N, Pipelines) ->
    NewPipelines = << <<ID:32/native>> || ID <- Pipelines >>,
    glDeleteProgramPipelines_raw(N, NewPipelines).

-doc """
foobar

It implements the `glGetFloatv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetFloatv) formore information.
""".
-spec get_float(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [float()]} | {error, atom()}.
get_float(Name, N) ->
    NewName = case Name of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        context_flags -> ?GL_CONTEXT_FLAGS;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetFloatv_raw(NewName, N).

-doc """
Simultaneously specify storage for all levels of a three-dimensional, two-dimensional array or cube-map array texture.

It implements the `glTexStorage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexStorage3D) formore information.
""".
-spec tex_storage_3d(
    Target :: texture_target(),
    Levels :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer()
) -> ok | {error, atom()}.
tex_storage_3d(Target, Levels, InternalFormat, Width, Height, Depth) ->
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glTexStorage3D_raw(NewTarget, Levels, NewInternalFormat, Width, Height, Depth).

-doc """
Enable and disable writing of frame buffer color components.

It implements the `glColorMask` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glColorMask) formore information.
""".
-spec color_mask(
    Red :: boolean(),
    Green :: boolean(),
    Blue :: boolean(),
    Alpha :: boolean()
) -> ok | {error, atom()}.
color_mask(Red, Green, Blue, Alpha) ->

    glColorMask_raw(Red, Green, Blue, Alpha).

-doc """
Establish data storage, format, dimensions and sample count of
    a renderbuffer object's image.

It implements the `glRenderbufferStorageMultisample` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glRenderbufferStorageMultisample) formore information.
""".
-spec renderbuffer_storage_multisample(
    Target :: renderbuffer_target(),
    Samples :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
renderbuffer_storage_multisample(Target, Samples, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    glRenderbufferStorageMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height).

-doc """
Determine if a name corresponds to a texture.

It implements the `glIsTexture` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsTexture) formore information.
""".
-spec is_texture(Texture :: texture()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_texture(Texture) ->

    glIsTexture_raw(Texture).

-doc """
Determine if a name corresponds to a framebuffer object.

It implements the `glIsFramebuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsFramebuffer) formore information.
""".
-spec is_framebuffer(Buffer :: frame_buffer()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_framebuffer(Buffer) ->

    glIsFramebuffer_raw(Buffer).

-doc """
Generate sampler object names.

It implements the `glGenSamplers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenSamplers) formore information.
""".
-spec gen_samplers(N :: pos_integer()) -> {ok, Samplers :: [sampler()]} | {error, atom()}.
gen_samplers(N) ->

    glGenSamplers_raw(N).

-doc """
Reserve transform feedback object names.

It implements the `glGenTransformFeedbacks` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenTransformFeedbacks) formore information.
""".
-spec gen_transform_feedbacks(N :: pos_integer()) -> {ok, Feedbacks :: [transform_feedback()]} | {error, atom()}.
gen_transform_feedbacks(N) ->

    glGenTransformFeedbacks_raw(N).

-doc """
Determine if a name corresponds to a sampler object.

It implements the `glIsSampler` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsSampler) formore information.
""".
-spec is_sampler(Sampler :: sampler()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_sampler(Sampler) ->

    glIsSampler_raw(Sampler).

-doc """
Define front- and back-facing polygons.

It implements the `glFrontFace` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFrontFace) formore information.
""".
-spec front_face(Mode :: front_face_direction()) -> ok | {error, atom()}.
front_face(Mode) ->
    NewMode = case Mode of
        ccw -> ?GL_CCW;
        cw -> ?GL_CW
    end,

    glFrontFace_raw(NewMode).

-doc """
Specify the equation used for both the RGB blend equation and the Alpha blend equation.

It implements the `glBlendEquation` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendEquation) formore information.
""".
-spec blend_equation(Mode :: blend_equation_mode_e_x_t()) -> ok | {error, atom()}.
blend_equation(Mode) ->
    NewMode = case Mode of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,

    glBlendEquation_raw(NewMode).

-doc """
Return a string describing the current GL connection.

It implements the `glGetString` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetString) formore information.
""".
-spec get_string(Name :: string_name()) -> {ok, NoName :: string() | binary()} | {error, atom()}.
get_string(Name) ->
    NewName = case Name of
        vendor -> ?GL_VENDOR;
        renderer -> ?GL_RENDERER;
        extensions -> ?GL_EXTENSIONS;
        shading_language_version -> ?GL_SHADING_LANGUAGE_VERSION;
        version -> ?GL_VERSION
    end,

    glGetString_raw(NewName).

-doc """
Block and wait for a sync object to become signaled.

It implements the `glClientWaitSync` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glClientWaitSync) formore information.
""".
-spec client_wait_sync(
    Sync :: sync(),
    Flags :: sync_object_mask(),
    Timeout :: pos_integer()
) -> {ok, NoName :: sync_status()} | {error, atom()}.
client_wait_sync(Sync, Flags, Timeout) ->
    NewFlags = lists:foldl(fun(Field, L) ->
        R = case Field of
            sync_flush_commands_bit -> ?GL_SYNC_FLUSH_COMMANDS_BIT
        end,
        L bor R
    end, 16#00, Flags),
    glClientWaitSync_raw(Sync, NewFlags, Timeout).

-doc """
Returns the information log for a shader object.

It implements the `glGetShaderInfoLog` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetShaderInfoLog) formore information.
""".
-spec get_shader_info_log(
    Shader :: shader(),
    StringSize :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_shader_info_log(Shader, StringSize) ->

    glGetShaderInfoLog_raw(Shader, StringSize).

-doc """
Generate query object names.

It implements the `glGenQueries` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenQueries) formore information.
""".
-spec gen_queries(N :: pos_integer()) -> {ok, Queries :: [query()]} | {error, atom()}.
gen_queries(N) ->

    glGenQueries_raw(N).

-doc """
Enable or disable server-side GL capabilities.

It implements the `glEnable` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glEnable) formore information.
""".
-spec enable(Cap :: enable_cap()) -> ok | {error, atom()}.
enable(Cap) ->
    NewCap = case Cap of
        sample_mask -> ?GL_SAMPLE_MASK;
        vertex_array -> ?GL_VERTEX_ARRAY;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        stencil_test -> ?GL_STENCIL_TEST;
        debug_output -> ?GL_DEBUG_OUTPUT;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        debug_output_synchronous -> ?GL_DEBUG_OUTPUT_SYNCHRONOUS;
        cull_face -> ?GL_CULL_FACE;
        sample_shading -> ?GL_SAMPLE_SHADING;
        scissor_test -> ?GL_SCISSOR_TEST;
        texture_2d -> ?GL_TEXTURE_2D;
        depth_test -> ?GL_DEPTH_TEST;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glEnable_raw(NewCap).

-doc """
Determine if a name corresponds to a buffer object.

It implements the `glIsBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsBuffer) formore information.
""".
-spec is_buffer(Buffer :: buffer()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_buffer(Buffer) ->

    glIsBuffer_raw(Buffer).

-doc """
Specify pixel arithmetic for RGB and alpha components separately.

It implements the `glBlendFuncSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendFuncSeparate) formore information.
""".
-spec blend_func_separate(
    SourceRGB :: blending_factor(),
    DestinationRGB :: blending_factor(),
    SourceAlpha :: blending_factor(),
    DestinationAlpha :: blending_factor()
) -> ok | {error, atom()}.
blend_func_separate(SourceRGB, DestinationRGB, SourceAlpha, DestinationAlpha) ->
    NewDestinationAlpha = case DestinationAlpha of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewSourceAlpha = case SourceAlpha of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewDestinationRGB = case DestinationRGB of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewSourceRGB = case SourceRGB of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,

    glBlendFuncSeparate_raw(NewSourceRGB, NewDestinationRGB, NewSourceAlpha, NewDestinationAlpha).

-doc """
Bind a framebuffer to a framebuffer target.

It implements the `glBindFramebuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindFramebuffer) formore information.
""".
-spec bind_framebuffer(
    Target :: framebuffer_target(),
    Buffer :: frame_buffer()
) -> ok | {error, atom()}.
bind_framebuffer(Target, Buffer) ->
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glBindFramebuffer_raw(NewTarget, Buffer).

-doc """
Specify clear values for the color buffers.

It implements the `glClearColor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glClearColor) formore information.
""".
-spec clear_color(
    Red :: float(),
    Green :: float(),
    Blue :: float(),
    Alpha :: float()
) -> ok | {error, atom()}.
clear_color(Red, Green, Blue, Alpha) ->

    glClearColor_raw(Red, Green, Blue, Alpha).

-doc """
Set the RGB blend equation and the alpha blend equation separately.

It implements the `glBlendEquationSeparatei` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendEquationSeparatei) formore information.
""".
-spec blend_equation_separate(
    Buffer :: pos_integer(),
    ModeRGB :: blend_equation_mode_e_x_t(),
    ModeAlpha :: blend_equation_mode_e_x_t()
) -> ok | {error, atom()}.
blend_equation_separate(Buffer, ModeRGB, ModeAlpha) ->
    NewModeAlpha = case ModeAlpha of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,
    NewModeRGB = case ModeRGB of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,

    glBlendEquationSeparatei_raw(Buffer, NewModeRGB, NewModeAlpha).

-doc """
Specify a three-dimensional texture image in a compressed format.

It implements the `glCompressedTexImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCompressedTexImage3D) formore information.
""".
-spec compressed_tex_image_3d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    Border :: integer(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_tex_image_3d(Target, Level, InternalFormat, Width, Height, Depth, Border, ImageSize, ImageData) ->
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glCompressedTexImage3D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Depth, Border, ImageSize, ImageData).

-doc """
Delete named query objects.

It implements the `glDeleteQueries` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteQueries) formore information.
""".
-spec delete_queries(
    N :: integer(),
    Queries :: [query()]
) -> ok | {error, atom()}.
delete_queries(N, Queries) ->
    NewQueries = << <<ID:32/native>> || ID <- Queries >>,
    glDeleteQueries_raw(N, NewQueries).

-doc """
Enable and disable writing of frame buffer color components.

It implements the `glColorMaski` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glColorMaski) formore information.
""".
-spec color_mask(
    Index :: pos_integer(),
    Red :: boolean(),
    Green :: boolean(),
    Blue :: boolean(),
    Alpha :: boolean()
) -> ok | {error, atom()}.
color_mask(Index, Red, Green, Blue, Alpha) ->

    glColorMaski_raw(Index, Red, Green, Blue, Alpha).

-doc """
Attach a level of a texture object as a logical buffer of a framebuffer object.

It implements the `glFramebufferTexture` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFramebufferTexture) formore information.
""".
-spec framebuffer_texture(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    Texture :: texture(),
    Level :: integer()
) -> ok | {error, atom()}.
framebuffer_texture(Target, Attachment, Texture, Level) ->
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glFramebufferTexture_raw(NewTarget, NewAttachment, Texture, Level).

-doc """
Delete named textures.

It implements the `glDeleteTextures` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteTextures) formore information.
""".
-spec delete_textures(
    N :: integer(),
    Textures :: [texture()]
) -> ok | {error, atom()}.
delete_textures(N, Textures) ->
    NewTextures = << <<ID:32/native>> || ID <- Textures >>,
    glDeleteTextures_raw(N, NewTextures).

-doc """
Establish data storage, format and dimensions of a
    renderbuffer object's image.

It implements the `glRenderbufferStorage` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glRenderbufferStorage) formore information.
""".
-spec render_buffer_storage(
    Target :: renderbuffer_target(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
render_buffer_storage(Target, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    glRenderbufferStorage_raw(NewTarget, NewInternalFormat, Width, Height).

-doc """
Test whether a capability is enabled.

It implements the `glIsEnabled` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsEnabled) formore information.
""".
-spec is_enabled(Capability :: enable_cap()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_enabled(Capability) ->
    NewCapability = case Capability of
        sample_mask -> ?GL_SAMPLE_MASK;
        vertex_array -> ?GL_VERTEX_ARRAY;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        stencil_test -> ?GL_STENCIL_TEST;
        debug_output -> ?GL_DEBUG_OUTPUT;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        debug_output_synchronous -> ?GL_DEBUG_OUTPUT_SYNCHRONOUS;
        cull_face -> ?GL_CULL_FACE;
        sample_shading -> ?GL_SAMPLE_SHADING;
        scissor_test -> ?GL_SCISSOR_TEST;
        texture_2d -> ?GL_TEXTURE_2D;
        depth_test -> ?GL_DEPTH_TEST;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glIsEnabled_raw(NewCapability).

-doc """
Launch one or more compute work groups.

It implements the `glDispatchCompute` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDispatchCompute) formore information.
""".
-spec dispatch_compute(
    NumGroupsX :: pos_integer(),
    NumGroupsY :: pos_integer(),
    NumGroupsZ :: pos_integer()
) -> ok | {error, atom()}.
dispatch_compute(NumGroupsX, NumGroupsY, NumGroupsZ) ->

    glDispatchCompute_raw(NumGroupsX, NumGroupsY, NumGroupsZ).

-doc """
Specify a three-dimensional texture subimage in a compressed format.

It implements the `glCompressedTexSubImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCompressedTexSubImage3D) formore information.
""".
-spec compressed_tex_sub_image_3d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    OffsetZ :: integer(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    Format :: internal_format(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_tex_sub_image_3d(Target, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, Format, ImageSize, ImageData) ->
    NewFormat = case Format of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glCompressedTexSubImage3D_raw(NewTarget, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, NewFormat, ImageSize, ImageData).

-doc """
Delete named buffer objects.

It implements the `glDeleteBuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteBuffers) formore information.
""".
-spec delete_buffers(
    N :: integer(),
    Buffers :: [buffer()]
) -> ok | {error, atom()}.
delete_buffers(N, Buffers) ->
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    glDeleteBuffers_raw(N, NewBuffers).

-doc """
Generate buffer object names.

It implements the `glGenBuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenBuffers) formore information.
""".
-spec gen_buffers(N :: pos_integer()) -> {ok, Buffers :: [buffer()]} | {error, atom()}.
gen_buffers(N) ->

    glGenBuffers_raw(N).

-doc """
Select active texture unit.

It implements the `glActiveTexture` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glActiveTexture) formore information.
""".
-spec active_texture(Texture :: texture_unit()) -> ok | {error, atom()}.
active_texture(Texture) ->
    NewTexture = case Texture of
        texture31 -> ?GL_TEXTURE31;
        texture0 -> ?GL_TEXTURE0;
        texture22 -> ?GL_TEXTURE22;
        texture1 -> ?GL_TEXTURE1;
        texture15 -> ?GL_TEXTURE15;
        texture30 -> ?GL_TEXTURE30;
        texture20 -> ?GL_TEXTURE20;
        texture26 -> ?GL_TEXTURE26;
        texture25 -> ?GL_TEXTURE25;
        texture7 -> ?GL_TEXTURE7;
        texture18 -> ?GL_TEXTURE18;
        texture11 -> ?GL_TEXTURE11;
        texture5 -> ?GL_TEXTURE5;
        texture3 -> ?GL_TEXTURE3;
        texture29 -> ?GL_TEXTURE29;
        texture13 -> ?GL_TEXTURE13;
        texture16 -> ?GL_TEXTURE16;
        texture4 -> ?GL_TEXTURE4;
        texture12 -> ?GL_TEXTURE12;
        texture21 -> ?GL_TEXTURE21;
        texture27 -> ?GL_TEXTURE27;
        texture24 -> ?GL_TEXTURE24;
        texture23 -> ?GL_TEXTURE23;
        texture28 -> ?GL_TEXTURE28;
        texture9 -> ?GL_TEXTURE9;
        texture8 -> ?GL_TEXTURE8;
        texture6 -> ?GL_TEXTURE6;
        texture17 -> ?GL_TEXTURE17;
        texture2 -> ?GL_TEXTURE2;
        texture10 -> ?GL_TEXTURE10;
        texture14 -> ?GL_TEXTURE14;
        texture19 -> ?GL_TEXTURE19
    end,

    glActiveTexture_raw(NewTexture).

-doc """
Resume transform feedback operations.

It implements the `glResumeTransformFeedback` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glResumeTransformFeedback) formore information.
""".
-spec resume_transform_feedback() -> ok | {error, atom()}.
resume_transform_feedback() ->

    glResumeTransformFeedback_raw().

-doc """
undefined

It implements the `glGetInteger64i_v` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetInteger64i_v) formore information.
""".
-spec get_integer64(
    Target :: get_p_name(),
    Index :: pos_integer(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_integer64(Target, Index, N) ->
    NewTarget = case Target of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        context_flags -> ?GL_CONTEXT_FLAGS;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetInteger64i_v_raw(NewTarget, Index, N).

-doc """
Block until all GL execution is complete.

It implements the `glFinish` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFinish) formore information.
""".
-spec finish() -> ok | {error, atom()}.
finish() ->

    glFinish_raw().

-doc """
Specify the equation used for both the RGB blend equation and the Alpha blend equation.

It implements the `glBlendEquationi` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendEquationi) formore information.
""".
-spec blend_equation(
    Buffer :: pos_integer(),
    Mode :: blend_equation_mode_e_x_t()
) -> ok | {error, atom()}.
blend_equation(Buffer, Mode) ->
    NewMode = case Mode of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,

    glBlendEquationi_raw(Buffer, NewMode).

-doc """
Create program pipeline objects.

It implements the `glCreateProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCreateProgram) formore information.
""".
-spec create_program() -> {ok, NoName :: program()} | {error, atom()}.
create_program() ->

    glCreateProgram_raw().

-doc """
Specify storage for a two-dimensional multisample array texture.

It implements the `glTexStorage3DMultisample` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexStorage3DMultisample) formore information.
""".
-spec tex_storage_3d_multisample(
    Target :: texture_target(),
    Samples :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    FixedSampleLocations :: boolean()
) -> ok | {error, atom()}.
tex_storage_3d_multisample(Target, Samples, InternalFormat, Width, Height, Depth, FixedSampleLocations) ->
    NewInternalFormat = case InternalFormat of
        compressed_rgba_astc_4x4 -> ?GL_COMPRESSED_RGBA_ASTC_4x4;
        compressed_srgb8_alpha8_astc_4x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4;
        rg8 -> ?GL_RG8;
        compressed_rgba_astc_12x10 -> ?GL_COMPRESSED_RGBA_ASTC_12x10;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_astc_6x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5;
        compressed_srgb8_alpha8_astc_8x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_srgb8_alpha8_astc_5x4 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        compressed_rgba_astc_10x6 -> ?GL_COMPRESSED_RGBA_ASTC_10x6;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        compressed_rgba_astc_5x4 -> ?GL_COMPRESSED_RGBA_ASTC_5x4;
        compressed_srgb8_alpha8_astc_10x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rgba_astc_10x5 -> ?GL_COMPRESSED_RGBA_ASTC_10x5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        compressed_srgb8_alpha8_astc_12x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        compressed_srgb8_alpha8_astc_12x12 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        compressed_rgba_astc_5x5 -> ?GL_COMPRESSED_RGBA_ASTC_5x5;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        compressed_rgba_astc_12x12 -> ?GL_COMPRESSED_RGBA_ASTC_12x12;
        compressed_rgba_astc_10x10 -> ?GL_COMPRESSED_RGBA_ASTC_10x10;
        rgba16ui -> ?GL_RGBA16UI;
        compressed_srgb8_alpha8_astc_6x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6;
        compressed_srgb8_alpha8_astc_8x6 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6;
        compressed_srgb8_alpha8_astc_10x10 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_srgb8_alpha8_astc_10x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgba_astc_8x6 -> ?GL_COMPRESSED_RGBA_ASTC_8x6;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        compressed_srgb8_alpha8_astc_10x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5;
        rg32f -> ?GL_RG32F;
        compressed_srgb8_alpha8_astc_8x8 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8;
        compressed_rgba_astc_8x8 -> ?GL_COMPRESSED_RGBA_ASTC_8x8;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_rgba_astc_10x8 -> ?GL_COMPRESSED_RGBA_ASTC_10x8;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        compressed_rgba_astc_8x5 -> ?GL_COMPRESSED_RGBA_ASTC_8x5;
        rgba32ui -> ?GL_RGBA32UI;
        compressed_rgba_astc_6x6 -> ?GL_COMPRESSED_RGBA_ASTC_6x6;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        compressed_rgba_astc_6x5 -> ?GL_COMPRESSED_RGBA_ASTC_6x5;
        compressed_srgb8_alpha8_astc_5x5 -> ?GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glTexStorage3DMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height, Depth, FixedSampleLocations).

-doc """
Attach a single layer of a texture object as a logical buffer of a framebuffer object.

It implements the `glFramebufferTextureLayer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFramebufferTextureLayer) formore information.
""".
-spec framebuffer_texture_layer(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    Texture :: texture(),
    Level :: integer(),
    Layer :: integer()
) -> ok | {error, atom()}.
framebuffer_texture_layer(Target, Attachment, Texture, Level, Layer) ->
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glFramebufferTextureLayer_raw(NewTarget, NewAttachment, Texture, Level, Layer).

-doc """
Launch one or more compute work groups using parameters stored in a buffer.

It implements the `glDispatchComputeIndirect` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDispatchComputeIndirect) formore information.
""".
-spec dispatch_compute_indirect(Indirect :: integer()) -> ok | {error, atom()}.
dispatch_compute_indirect(Indirect) ->

    glDispatchComputeIndirect_raw(Indirect).

-doc """
Specify whether front- or back-facing facets can be culled.

It implements the `glCullFace` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCullFace) formore information.
""".
-spec cull_face(Mode :: triangle_face()) -> ok | {error, atom()}.
cull_face(Mode) ->
    NewMode = case Mode of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glCullFace_raw(NewMode).

-doc """
Delete vertex array objects.

It implements the `glDeleteVertexArrays` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteVertexArrays) formore information.
""".
-spec delete_vertex_arrays(
    N :: integer(),
    Arrays :: [vertex_array()]
) -> ok | {error, atom()}.
delete_vertex_arrays(N, Arrays) ->
    NewArrays = << <<ID:32/native>> || ID <- Arrays >>,
    glDeleteVertexArrays_raw(N, NewArrays).

-doc """
undefined

It implements the `glGetProgramiv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) formore information.
""".
-spec get_program_iv(
    Program :: program(),
    PName :: program_property_a_r_b(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_program_iv(Program, PName, N) ->
    NewPName = case PName of
        transform_feedback_buffer_mode -> ?GL_TRANSFORM_FEEDBACK_BUFFER_MODE;
        active_uniform_blocks -> ?GL_ACTIVE_UNIFORM_BLOCKS;
        active_uniform_max_length -> ?GL_ACTIVE_UNIFORM_MAX_LENGTH;
        active_atomic_counter_buffers -> ?GL_ACTIVE_ATOMIC_COUNTER_BUFFERS;
        geometry_vertices_out -> ?GL_GEOMETRY_VERTICES_OUT;
        compute_work_group_size -> ?GL_COMPUTE_WORK_GROUP_SIZE;
        transform_feedback_varying_max_length -> ?GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH;
        delete_status -> ?GL_DELETE_STATUS;
        active_uniform_block_max_name_length -> ?GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH;
        transform_feedback_varyings -> ?GL_TRANSFORM_FEEDBACK_VARYINGS;
        program_binary_length -> ?GL_PROGRAM_BINARY_LENGTH;
        active_attributes -> ?GL_ACTIVE_ATTRIBUTES;
        active_attribute_max_length -> ?GL_ACTIVE_ATTRIBUTE_MAX_LENGTH;
        active_uniforms -> ?GL_ACTIVE_UNIFORMS;
        validate_status -> ?GL_VALIDATE_STATUS;
        geometry_output_type -> ?GL_GEOMETRY_OUTPUT_TYPE;
        info_log_length -> ?GL_INFO_LOG_LENGTH;
        link_status -> ?GL_LINK_STATUS;
        geometry_input_type -> ?GL_GEOMETRY_INPUT_TYPE;
        attached_shaders -> ?GL_ATTACHED_SHADERS
    end,

    glGetProgramiv_raw(Program, NewPName, N).

-doc """
Installs a program object as part of current rendering state.

It implements the `glUseProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glUseProgram) formore information.
""".
-spec use_program(Program :: program()) -> ok | {error, atom()}.
use_program(Program) ->

    glUseProgram_raw(Program).

-doc """
Read a block of pixels from the frame buffer.

It implements the `glReadPixels` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glReadPixels) formore information.
""".
-spec read_pixels(
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    DataSize :: pos_integer()
) -> {ok, Data :: binary()} | {error, atom()}.
read_pixels(X, Y, Width, Height, Format, Type, DataSize) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    glReadPixels_raw(X, Y, Width, Height, NewFormat, NewType, DataSize).

-doc """
Deletes a program object.

It implements the `glDeleteProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteProgram) formore information.
""".
-spec delete_program(Program :: program()) -> ok | {error, atom()}.
delete_program(Program) ->

    glDeleteProgram_raw(Program).

-doc """
Bind a transform feedback object.

It implements the `glBindTransformFeedback` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindTransformFeedback) formore information.
""".
-spec bind_transform_feedback(
    Target :: bind_transform_feedback_target(),
    Feedback :: transform_feedback()
) -> ok | {error, atom()}.
bind_transform_feedback(Target, Feedback) ->
    NewTarget = case Target of
        transform_feedback -> ?GL_TRANSFORM_FEEDBACK
    end,

    glBindTransformFeedback_raw(NewTarget, Feedback).


glDisable_raw(_Cap) -> 
    erlang:nif_error(nif_library_not_loaded).

glMemoryBarrierByRegion_raw(_Barriers) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _Width, _Height, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendFuncSeparatei_raw(_Buffer, _SourceRGB, _DestinationRGB, _SourceAlpha, _DestinationAlpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindRenderbuffer_raw(_Target, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glEnableVertexAttribArray_raw(_Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glClearStencil_raw(_S) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribBinding_raw(_AttribIndex, _BindingIndex) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetProgramInfoLog_raw(_Program, _InfoLog) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexStorage2D_raw(_Target, _Levels, _InternalFormat, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetProgramPipelineInfoLog_raw(_Pipeline, _InfoLog) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetBooleani_v_raw(_Target, _Index, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsEnabledi_raw(_Capability, _Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilOp_raw(_Fail, _ZFail, _ZPass) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsRenderbuffer_raw(_Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetShaderiv_raw(_Shader, _PName, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glFlush_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glPauseTransformFeedback_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glIsQuery_raw(_Query) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsTransformFeedback_raw(_Feedback) -> 
    erlang:nif_error(nif_library_not_loaded).

glReadBuffer_raw(_Source) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteTransformFeedbacks_raw(_N, _Feedbacks) -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateShader_raw(_Type) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindProgramPipeline_raw(_Pipeline) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribPointer_raw(_Index, _Size, _Type, _Normalized, _Stride, _Pointer) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetInteger64v_raw(_PName, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glDrawArraysInstanced_raw(_Mode, _First, _Count, _InstanceCount) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteFramebuffers_raw(_N, _Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glPolygonOffset_raw(_Factor, _Units) -> 
    erlang:nif_error(nif_library_not_loaded).

glEndTransformFeedback_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glActiveShaderProgram_raw(_Pipeline, _Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilMask_raw(_Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyBufferSubData_raw(_ReadTarget, _WriteTarget, _ReadOffset, _WriteOffset, _Size) -> 
    erlang:nif_error(nif_library_not_loaded).

glDisableVertexAttribArray_raw(_Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glLinkProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompileShader_raw(_Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glDetachShader_raw(_Program, _Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyImageSubData_raw(_SrcName, _SrcTarget, _SrcLevel, _SrcX, _SrcY, _SrcZ, _DstName, _DstTarget, _DstLevel, _DstX, _DstY, _DstZ, _Width, _Height, _Depth) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexImage2D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Border, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glAttachShader_raw(_Program, _Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenerateMipmap_raw(_Target) -> 
    erlang:nif_error(nif_library_not_loaded).

glCheckFramebufferStatus_raw(_Target) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glDisablei_raw(_Capability, _Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glFenceSync_raw(_Condition, _Flags) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsShader_raw(_Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glWaitSync_raw(_Sync, _Flags, _Timeout) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenTextures_raw(_Textures) -> 
    erlang:nif_error(nif_library_not_loaded).

glEnablei_raw(_Capability, _Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glValidateProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindVertexBuffer_raw(_BindingIndex, _Buffer, _Offset, _Stride) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetStringi_raw(_Name, _Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexSubImage3D_raw(_Target, _Level, _OffsetX, _OffsetY, _OffsetZ, _Width, _Height, _Depth, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glMemoryBarrier_raw(_Barriers) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTexImage2D_raw(_Target, _Level, _InternalFormat, _X, _Y, _Width, _Height, _Border) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindVertexArray_raw(_Array) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlitFramebuffer_raw(_SrcX0, _SrcY0, _SrcX1, _SrcY1, _DstX0, _DstY0, _DstX1, _DstY1, _Mask, _Filter) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilMaskSeparate_raw(_Face, _Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glDebugMessageCallback_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribFormat_raw(_AttribIndex, _Size, _Type, _Normalized, _RelativeOffset) -> 
    erlang:nif_error(nif_library_not_loaded).

glScissor_raw(_X, _Y, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexImage2D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Border, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetError_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glIsVertexArray_raw(_Array) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindTexture_raw(_Target, _Texture) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteShader_raw(_Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetIntegeri_v_raw(_Target, _Index, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilFunc_raw(_Function, _Ref, _Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenProgramPipelines_raw(_Pipelines) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsSync_raw(_Sync) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexBuffer_raw(_Target, _InternalFormat, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glDrawArrays_raw(_Mode, _First, _Count) -> 
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTexture2D_raw(_Target, _Attachment, _TextureTarget, _Texture, _Level) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribIFormat_raw(_AttribIndex, _Size, _Type, _RelativeOffset) -> 
    erlang:nif_error(nif_library_not_loaded).

glLineWidth_raw(_Width) -> 
    erlang:nif_error(nif_library_not_loaded).

glDepthMask_raw(_Flag) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendEquationSeparate_raw(_ModeRGB, _ModeAlpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTexSubImage3D_raw(_Target, _Level, _OffsetX, _OffsetY, _OffsetZ, _X, _Y, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glViewport_raw(_X, _Y, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexImage3D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Depth, _Border, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteRenderbuffers_raw(_N, _Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _Width, _Height, _Format, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindBuffer_raw(_Target, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexBindingDivisor_raw(_Index, _Divisor) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendFunci_raw(_Buffer, _SourceFactor, _DestinationFactor) -> 
    erlang:nif_error(nif_library_not_loaded).

glBufferData_raw(_Target, _Size, _Data, _Usage) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetShaderSource_raw(_Shader, _Source) -> 
    erlang:nif_error(nif_library_not_loaded).

glSampleCoverage_raw(_Value, _Invert) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilOpSeparate_raw(_Face, _StencilFail, _DepthPassFail, _DepthPassPass) -> 
    erlang:nif_error(nif_library_not_loaded).

glDebugMessageInsert_raw(_Source, _Type, _Id, _Severity, _Length, _Message) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendFunc_raw(_SourceFactor, _DestinationFactor) -> 
    erlang:nif_error(nif_library_not_loaded).

glUseProgramStages_raw(_Pipeline, _Stages, _Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glHint_raw(_Target, _Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glPopDebugGroup_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glGetBooleanv_raw(_Name, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glBeginTransformFeedback_raw(_PrimitiveMode) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetGraphicsResetStatus_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendColor_raw(_Red, _Green, _Blue, _Alpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexStorage2DMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height, _FixedSampleLocations) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsProgramPipeline_raw(_Piepline) -> 
    erlang:nif_error(nif_library_not_loaded).

glBeginQuery_raw(_Target, _Query) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexBufferRange_raw(_Target, _InternalFormat, _Buffer, _Offset, _Size) -> 
    erlang:nif_error(nif_library_not_loaded).

glReleaseShaderCompiler_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glEndQuery_raw(_Target) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteSamplers_raw(_N, _Samplers) -> 
    erlang:nif_error(nif_library_not_loaded).

glShaderSource_raw(_Shader, _Source) -> 
    erlang:nif_error(nif_library_not_loaded).

glClear_raw(_Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glFramebufferRenderbuffer_raw(_Target, _Attachment, _RenderbufferTarget, _Renderbuffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glValidateProgramPipeline_raw(_Pipeline) -> 
    erlang:nif_error(nif_library_not_loaded).

glMinSampleShading_raw(_Value) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteSync_raw(_Sync) -> 
    erlang:nif_error(nif_library_not_loaded).

glReadnPixels_raw(_X, _Y, _Width, _Height, _Format, _Type, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _X, _Y, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilFuncSeparate_raw(_Face, _Function, _Ref, _Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetIntegerv_raw(_Name, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenVertexArrays_raw(_Arrays) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenRenderbuffers_raw(_Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glDepthFunc_raw(_Function) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenFramebuffers_raw(_Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribDivisor_raw(_Index, _Divisor) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteProgramPipelines_raw(_N, _Pipelines) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetFloatv_raw(_Name, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexStorage3D_raw(_Target, _Levels, _InternalFormat, _Width, _Height, _Depth) -> 
    erlang:nif_error(nif_library_not_loaded).

glColorMask_raw(_Red, _Green, _Blue, _Alpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glRenderbufferStorageMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsTexture_raw(_Texture) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsFramebuffer_raw(_Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenSamplers_raw(_Samplers) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenTransformFeedbacks_raw(_Feedbacks) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsSampler_raw(_Sampler) -> 
    erlang:nif_error(nif_library_not_loaded).

glFrontFace_raw(_Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendEquation_raw(_Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetString_raw(_Name) -> 
    erlang:nif_error(nif_library_not_loaded).

glClientWaitSync_raw(_Sync, _Flags, _Timeout) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetShaderInfoLog_raw(_Shader, _InfoLog) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenQueries_raw(_Queries) -> 
    erlang:nif_error(nif_library_not_loaded).

glEnable_raw(_Cap) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsBuffer_raw(_Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendFuncSeparate_raw(_SourceRGB, _DestinationRGB, _SourceAlpha, _DestinationAlpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindFramebuffer_raw(_Target, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glClearColor_raw(_Red, _Green, _Blue, _Alpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendEquationSeparatei_raw(_Buffer, _ModeRGB, _ModeAlpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexImage3D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Depth, _Border, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteQueries_raw(_N, _Queries) -> 
    erlang:nif_error(nif_library_not_loaded).

glColorMaski_raw(_Index, _Red, _Green, _Blue, _Alpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTexture_raw(_Target, _Attachment, _Texture, _Level) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteTextures_raw(_N, _Textures) -> 
    erlang:nif_error(nif_library_not_loaded).

glRenderbufferStorage_raw(_Target, _InternalFormat, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsEnabled_raw(_Capability) -> 
    erlang:nif_error(nif_library_not_loaded).

glDispatchCompute_raw(_NumGroupsX, _NumGroupsY, _NumGroupsZ) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexSubImage3D_raw(_Target, _Level, _OffsetX, _OffsetY, _OffsetZ, _Width, _Height, _Depth, _Format, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteBuffers_raw(_N, _Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenBuffers_raw(_Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glActiveTexture_raw(_Texture) -> 
    erlang:nif_error(nif_library_not_loaded).

glResumeTransformFeedback_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glGetInteger64i_v_raw(_Target, _Index, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glFinish_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendEquationi_raw(_Buffer, _Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateProgram_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glTexStorage3DMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height, _Depth, _FixedSampleLocations) -> 
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTextureLayer_raw(_Target, _Attachment, _Texture, _Level, _Layer) -> 
    erlang:nif_error(nif_library_not_loaded).

glDispatchComputeIndirect_raw(_Indirect) -> 
    erlang:nif_error(nif_library_not_loaded).

glCullFace_raw(_Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteVertexArrays_raw(_N, _Arrays) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetProgramiv_raw(_Program, _PName, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glUseProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glReadPixels_raw(_X, _Y, _Width, _Height, _Format, _Type, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindTransformFeedback_raw(_Target, _Feedback) -> 
    erlang:nif_error(nif_library_not_loaded).

