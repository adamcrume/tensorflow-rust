Ї
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
E
AssignAddVariableOp
resource
value"dtype"
dtypetype�
B
AssignVariableOp
resource
value"dtype"
dtypetype�
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
A
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
}
ResourceApplyGradientDescent
var

alpha"T

delta"T" 
Ttype:
2	"
use_lockingbool( �
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
3
Square
x"T
y"T"
Ttype:
2
	
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718��
Z
wVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namew
S
w/Read/ReadVariableOpReadVariableOpw*
_output_shapes
:*
dtype0
Z
bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameb
S
b/Read/ReadVariableOpReadVariableOpb*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
-
w
b
	optimizer

signatures
31
VARIABLE_VALUEww/.ATTRIBUTES/VARIABLE_VALUE
31
VARIABLE_VALUEbb/.ATTRIBUTES/VARIABLE_VALUE
6
iter
	decay
learning_rate
momentum
 
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
�
StatefulPartitionedCallStatefulPartitionedCallb*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference_signature_wrapper_229
b
train_xPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
b
train_yPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCall_1StatefulPartitionedCalltrain_xtrain_ywbSGD/learning_rateSGD/momentumSGD/iter*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference_signature_wrapper_213
�
StatefulPartitionedCall_2StatefulPartitionedCallw*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference_signature_wrapper_221
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenamew/Read/ReadVariableOpb/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOpConst*
Tin

2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *%
f R
__inference__traced_save_390
�
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filenamewbSGD/iter	SGD/decaySGD/learning_rateSGD/momentum*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_restore_418Ǻ
�
`
__inference_get_b_195%
readvariableop_resource:
identity��ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpn
IdentityIdentityReadVariableOp:value:0^ReadVariableOp*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp
�
�
__inference___call___29
x%
readvariableop_resource:)
add_readvariableop_resource:
identity��ReadVariableOp�add/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpZ
mulMulReadVariableOp:value:0x*
T0*#
_output_shapes
:���������2
mul�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOpf
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*#
_output_shapes
:���������2
add}
IdentityIdentityadd:z:0^ReadVariableOp^add/ReadVariableOp*
T0*#
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������: : 2 
ReadVariableOpReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:F B
#
_output_shapes
:���������

_user_specified_namex
�
�
%__inference___backward___call___64_94
placeholder 
gradients_add_grad_shape_mul1
-gradients_add_grad_shape_1_add_readvariableop+
'gradients_mul_grad_shape_readvariableop 
gradients_mul_grad_shape_1_x
identity

identity_1

identity_2q
gradients/grad_ys_0Identityplaceholder*
T0*#
_output_shapes
:���������2
gradients/grad_ys_0�
gradients/add_grad/ShapeShapegradients_add_grad_shape_mul*
T0*
_output_shapes
:2
gradients/add_grad/Shape�
gradients/add_grad/Shape_1Shape-gradients_add_grad_shape_1_add_readvariableop*
T0*
_output_shapes
:2
gradients/add_grad/Shape_1�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/add_grad/Shape:output:0#gradients/add_grad/Shape_1:output:0*2
_output_shapes 
:���������:���������2*
(gradients/add_grad/BroadcastGradientArgs�
gradients/add_grad/SumSumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:2
gradients/add_grad/Sum�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sum:output:0!gradients/add_grad/Shape:output:0*
T0*#
_output_shapes
:���������2
gradients/add_grad/Reshape�
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:2
gradients/add_grad/Sum_1�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*
_output_shapes
:2
gradients/add_grad/Reshape_1�
gradients/mul_grad/ShapeShape'gradients_mul_grad_shape_readvariableop*
T0*
_output_shapes
:2
gradients/mul_grad/Shape�
gradients/mul_grad/Shape_1Shapegradients_mul_grad_shape_1_x*
T0*
_output_shapes
:2
gradients/mul_grad/Shape_1�
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/mul_grad/Shape:output:0#gradients/mul_grad/Shape_1:output:0*2
_output_shapes 
:���������:���������2*
(gradients/mul_grad/BroadcastGradientArgs�
gradients/mul_grad/MulMul#gradients/add_grad/Reshape:output:0gradients_mul_grad_shape_1_x*
T0*#
_output_shapes
:���������2
gradients/mul_grad/Mul�
gradients/mul_grad/SumSumgradients/mul_grad/Mul:z:0-gradients/mul_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:2
gradients/mul_grad/Sum�
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sum:output:0!gradients/mul_grad/Shape:output:0*
T0*
_output_shapes
:2
gradients/mul_grad/Reshape�
gradients/mul_grad/Mul_1Mul'gradients_mul_grad_shape_readvariableop#gradients/add_grad/Reshape:output:0*
T0*#
_output_shapes
:���������2
gradients/mul_grad/Mul_1�
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1:z:0-gradients/mul_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:2
gradients/mul_grad/Sum_1�
gradients/mul_grad/Reshape_1Reshape!gradients/mul_grad/Sum_1:output:0#gradients/mul_grad/Shape_1:output:0*
T0*#
_output_shapes
:���������2
gradients/mul_grad/Reshape_1u
IdentityIdentity%gradients/mul_grad/Reshape_1:output:0*
T0*#
_output_shapes
:���������2

Identityn

Identity_1Identity#gradients/mul_grad/Reshape:output:0*
T0*
_output_shapes
:2

Identity_1p

Identity_2Identity%gradients/add_grad/Reshape_1:output:0*
T0*
_output_shapes
:2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������:���������:::���������*0
forward_function_name__forward___call___93:) %
#
_output_shapes
:���������:)%
#
_output_shapes
:���������: 

_output_shapes
:: 

_output_shapes
::)%
#
_output_shapes
:���������
�
e
!__inference_signature_wrapper_221
unknown:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *
fR
__inference_get_w_1892
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
�	
�
__forward___call___326
x_0%
readvariableop_resource:)
add_readvariableop_resource:
identity
mul
add_readvariableop
readvariableop
x��ReadVariableOp�add/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOp9
mul_0MulReadVariableOp:value:0x_0*
T02
mul�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOph
addAddV2	mul_0:z:0add/ReadVariableOp:value:0*
T0*#
_output_shapes
:���������2
add}
IdentityIdentityadd:z:0^ReadVariableOp^add/ReadVariableOp*
T0*#
_output_shapes
:���������2

Identity"0
add_readvariableopadd/ReadVariableOp:value:0"
identityIdentity:output:0"
mul	mul_0:z:0"(
readvariableopReadVariableOp:value:0"
xx_0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������: : *C
backward_function_name)'__inference___backward___call___297_3272 
ReadVariableOpReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:F B
#
_output_shapes
:���������

_user_specified_namex
�
`
__inference_get_b_244%
readvariableop_resource:
identity��ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpn
IdentityIdentityReadVariableOp:value:0^ReadVariableOp*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp
�
`
__inference_get_w_249%
readvariableop_resource:
identity��ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpn
IdentityIdentityReadVariableOp:value:0^ReadVariableOp*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp
�
�
__inference__traced_save_390
file_prefix 
savev2_w_read_readvariableop 
savev2_b_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�Bw/.ATTRIBUTES/VARIABLE_VALUEBb/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_w_read_readvariableopsavev2_b_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
: ::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
�
__forward___call___93
x_0%
readvariableop_resource:)
add_readvariableop_resource:
identity
mul
add_readvariableop
readvariableop
x��ReadVariableOp�add/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOp9
mul_0MulReadVariableOp:value:0x_0*
T02
mul�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOph
addAddV2	mul_0:z:0add/ReadVariableOp:value:0*
T0*#
_output_shapes
:���������2
add}
IdentityIdentityadd:z:0^ReadVariableOp^add/ReadVariableOp*
T0*#
_output_shapes
:���������2

Identity"0
add_readvariableopadd/ReadVariableOp:value:0"
identityIdentity:output:0"
mul	mul_0:z:0"(
readvariableopReadVariableOp:value:0"
xx_0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������: : *A
backward_function_name'%__inference___backward___call___64_942 
ReadVariableOpReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:F B
#
_output_shapes
:���������

_user_specified_namex
�<
�
__inference_train_183
x
y
unknown:
	unknown_0:*
 sgd_cast_readvariableop_resource: ,
"sgd_cast_1_readvariableop_resource: .
$sgd_sgd_assignaddvariableop_resource:	 
identity��SGD/Cast/ReadVariableOp�SGD/Cast_1/ReadVariableOp�SGD/SGD/AssignAddVariableOp�+SGD/SGD/update/ResourceApplyGradientDescent�-SGD/SGD/update_1/ResourceApplyGradientDescent�StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout	
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:::���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *
fR
__forward___call___932
StatefulPartitionedCalld
subSub StatefulPartitionedCall:output:0y*
T0*#
_output_shapes
:���������2
subQ
SquareSquaresub:z:0*
T0*#
_output_shapes
:���������2
SquareX
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstQ
MeanMean
Square:y:0Const:output:0*
T0*
_output_shapes
: 2
MeanQ
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones�
gradient_tape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradient_tape/Reshape/shape�
gradient_tape/ReshapeReshapeones:output:0$gradient_tape/Reshape/shape:output:0*
T0*
_output_shapes
:2
gradient_tape/Reshaped
gradient_tape/ShapeShape
Square:y:0*
T0*
_output_shapes
:2
gradient_tape/Shape�
gradient_tape/TileTilegradient_tape/Reshape:output:0gradient_tape/Shape:output:0*
T0*#
_output_shapes
:���������2
gradient_tape/Tileh
gradient_tape/Shape_1Shape
Square:y:0*
T0*
_output_shapes
:2
gradient_tape/Shape_1q
gradient_tape/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 2
gradient_tape/Shape_2t
gradient_tape/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gradient_tape/Const�
gradient_tape/ProdProdgradient_tape/Shape_1:output:0gradient_tape/Const:output:0*
T0*
_output_shapes
: 2
gradient_tape/Prodx
gradient_tape/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gradient_tape/Const_1�
gradient_tape/Prod_1Prodgradient_tape/Shape_2:output:0gradient_tape/Const_1:output:0*
T0*
_output_shapes
: 2
gradient_tape/Prod_1t
gradient_tape/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :2
gradient_tape/Maximum/y�
gradient_tape/MaximumMaximumgradient_tape/Prod_1:output:0 gradient_tape/Maximum/y:output:0*
T0*
_output_shapes
: 2
gradient_tape/Maximum�
gradient_tape/floordivFloorDivgradient_tape/Prod:output:0gradient_tape/Maximum:z:0*
T0*
_output_shapes
: 2
gradient_tape/floordiv|
gradient_tape/CastCastgradient_tape/floordiv:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
gradient_tape/Cast�
gradient_tape/truedivRealDivgradient_tape/Tile:output:0gradient_tape/Cast:y:0*
T0*#
_output_shapes
:���������2
gradient_tape/truediv�
gradient_tape/Const_2Const^gradient_tape/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @2
gradient_tape/Const_2�
gradient_tape/MulMulsub:z:0gradient_tape/Const_2:output:0*
T0*#
_output_shapes
:���������2
gradient_tape/Mul�
gradient_tape/Mul_1Mulgradient_tape/truediv:z:0gradient_tape/Mul:z:0*
T0*#
_output_shapes
:���������2
gradient_tape/Mul_1�
gradient_tape/sub/ShapeShape StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
gradient_tape/sub/Shapeg
gradient_tape/sub/Shape_1Shapey*
T0*
_output_shapes
:2
gradient_tape/sub/Shape_1�
'gradient_tape/sub/BroadcastGradientArgsBroadcastGradientArgs gradient_tape/sub/Shape:output:0"gradient_tape/sub/Shape_1:output:0*2
_output_shapes 
:���������:���������2)
'gradient_tape/sub/BroadcastGradientArgs�
gradient_tape/sub/SumSumgradient_tape/Mul_1:z:0,gradient_tape/sub/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:2
gradient_tape/sub/Sum�
gradient_tape/sub/ReshapeReshapegradient_tape/sub/Sum:output:0 gradient_tape/sub/Shape:output:0*
T0*#
_output_shapes
:���������2
gradient_tape/sub/Reshape�
PartitionedCallPartitionedCall"gradient_tape/sub/Reshape:output:0 StatefulPartitionedCall:output:1 StatefulPartitionedCall:output:2 StatefulPartitionedCall:output:3 StatefulPartitionedCall:output:4*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������::* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference___backward___call___64_942
PartitionedCall�
SGD/Cast/ReadVariableOpReadVariableOp sgd_cast_readvariableop_resource*
_output_shapes
: *
dtype02
SGD/Cast/ReadVariableOp�
SGD/IdentityIdentitySGD/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 2
SGD/Identity�
SGD/Cast_1/ReadVariableOpReadVariableOp"sgd_cast_1_readvariableop_resource*
_output_shapes
: *
dtype02
SGD/Cast_1/ReadVariableOp�
SGD/Identity_1Identity!SGD/Cast_1/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 2
SGD/Identity_1�
+SGD/SGD/update/ResourceApplyGradientDescentResourceApplyGradientDescent	unknown_0SGD/Identity:output:0PartitionedCall:output:2^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_class

loc:@133*
_output_shapes
 *
use_locking(2-
+SGD/SGD/update/ResourceApplyGradientDescent�
-SGD/SGD/update_1/ResourceApplyGradientDescentResourceApplyGradientDescentunknownSGD/Identity:output:0PartitionedCall:output:1^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_class

loc:@131*
_output_shapes
 *
use_locking(2/
-SGD/SGD/update_1/ResourceApplyGradientDescent�
SGD/SGD/group_depsNoOp,^SGD/SGD/update/ResourceApplyGradientDescent.^SGD/SGD/update_1/ResourceApplyGradientDescent",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 2
SGD/SGD/group_depsu
SGD/SGD/ConstConst^SGD/SGD/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R2
SGD/SGD/Const�
SGD/SGD/AssignAddVariableOpAssignAddVariableOp$sgd_sgd_assignaddvariableop_resourceSGD/SGD/Const:output:0*
_output_shapes
 *
dtype0	2
SGD/SGD/AssignAddVariableOp�
IdentityIdentityMean:output:0^SGD/Cast/ReadVariableOp^SGD/Cast_1/ReadVariableOp^SGD/SGD/AssignAddVariableOp,^SGD/SGD/update/ResourceApplyGradientDescent.^SGD/SGD/update_1/ResourceApplyGradientDescent^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:���������:���������: : : : : 22
SGD/Cast/ReadVariableOpSGD/Cast/ReadVariableOp26
SGD/Cast_1/ReadVariableOpSGD/Cast_1/ReadVariableOp2:
SGD/SGD/AssignAddVariableOpSGD/SGD/AssignAddVariableOp2Z
+SGD/SGD/update/ResourceApplyGradientDescent+SGD/SGD/update/ResourceApplyGradientDescent2^
-SGD/SGD/update_1/ResourceApplyGradientDescent-SGD/SGD/update_1/ResourceApplyGradientDescent22
StatefulPartitionedCallStatefulPartitionedCall:F B
#
_output_shapes
:���������

_user_specified_namex:FB
#
_output_shapes
:���������

_user_specified_namey
�
�
!__inference_signature_wrapper_213
x
y
unknown:
	unknown_0:
	unknown_1: 
	unknown_2: 
	unknown_3:	 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxyunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *
fR
__inference_train_1832
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:���������:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B
#
_output_shapes
:���������

_user_specified_namex:FB
#
_output_shapes
:���������

_user_specified_namey
�
�
__inference___call___239
x%
readvariableop_resource:)
add_readvariableop_resource:
identity��ReadVariableOp�add/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpZ
mulMulReadVariableOp:value:0x*
T0*#
_output_shapes
:���������2
mul�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOpf
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*#
_output_shapes
:���������2
add}
IdentityIdentityadd:z:0^ReadVariableOp^add/ReadVariableOp*
T0*#
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������: : 2 
ReadVariableOpReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:F B
#
_output_shapes
:���������

_user_specified_namex
�
`
__inference_get_w_189%
readvariableop_resource:
identity��ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpn
IdentityIdentityReadVariableOp:value:0^ReadVariableOp*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp
�
e
!__inference_signature_wrapper_229
unknown:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *
fR
__inference_get_b_1952
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
�<
�
__inference_train_346
x
y
unknown:
	unknown_0:*
 sgd_cast_readvariableop_resource: ,
"sgd_cast_1_readvariableop_resource: .
$sgd_sgd_assignaddvariableop_resource:	 
identity��SGD/Cast/ReadVariableOp�SGD/Cast_1/ReadVariableOp�SGD/SGD/AssignAddVariableOp�+SGD/SGD/update/ResourceApplyGradientDescent�-SGD/SGD/update_1/ResourceApplyGradientDescent�StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout	
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:::���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *
fR
__forward___call___3262
StatefulPartitionedCalld
subSub StatefulPartitionedCall:output:0y*
T0*#
_output_shapes
:���������2
subQ
SquareSquaresub:z:0*
T0*#
_output_shapes
:���������2
SquareX
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstQ
MeanMean
Square:y:0Const:output:0*
T0*
_output_shapes
: 2
MeanQ
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ones�
gradient_tape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradient_tape/Reshape/shape�
gradient_tape/ReshapeReshapeones:output:0$gradient_tape/Reshape/shape:output:0*
T0*
_output_shapes
:2
gradient_tape/Reshaped
gradient_tape/ShapeShape
Square:y:0*
T0*
_output_shapes
:2
gradient_tape/Shape�
gradient_tape/TileTilegradient_tape/Reshape:output:0gradient_tape/Shape:output:0*
T0*#
_output_shapes
:���������2
gradient_tape/Tileh
gradient_tape/Shape_1Shape
Square:y:0*
T0*
_output_shapes
:2
gradient_tape/Shape_1q
gradient_tape/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 2
gradient_tape/Shape_2t
gradient_tape/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gradient_tape/Const�
gradient_tape/ProdProdgradient_tape/Shape_1:output:0gradient_tape/Const:output:0*
T0*
_output_shapes
: 2
gradient_tape/Prodx
gradient_tape/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gradient_tape/Const_1�
gradient_tape/Prod_1Prodgradient_tape/Shape_2:output:0gradient_tape/Const_1:output:0*
T0*
_output_shapes
: 2
gradient_tape/Prod_1t
gradient_tape/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :2
gradient_tape/Maximum/y�
gradient_tape/MaximumMaximumgradient_tape/Prod_1:output:0 gradient_tape/Maximum/y:output:0*
T0*
_output_shapes
: 2
gradient_tape/Maximum�
gradient_tape/floordivFloorDivgradient_tape/Prod:output:0gradient_tape/Maximum:z:0*
T0*
_output_shapes
: 2
gradient_tape/floordiv|
gradient_tape/CastCastgradient_tape/floordiv:z:0*

DstT0*

SrcT0*
_output_shapes
: 2
gradient_tape/Cast�
gradient_tape/truedivRealDivgradient_tape/Tile:output:0gradient_tape/Cast:y:0*
T0*#
_output_shapes
:���������2
gradient_tape/truediv�
gradient_tape/Const_2Const^gradient_tape/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @2
gradient_tape/Const_2�
gradient_tape/MulMulsub:z:0gradient_tape/Const_2:output:0*
T0*#
_output_shapes
:���������2
gradient_tape/Mul�
gradient_tape/Mul_1Mulgradient_tape/truediv:z:0gradient_tape/Mul:z:0*
T0*#
_output_shapes
:���������2
gradient_tape/Mul_1�
gradient_tape/sub/ShapeShape StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
gradient_tape/sub/Shapeg
gradient_tape/sub/Shape_1Shapey*
T0*
_output_shapes
:2
gradient_tape/sub/Shape_1�
'gradient_tape/sub/BroadcastGradientArgsBroadcastGradientArgs gradient_tape/sub/Shape:output:0"gradient_tape/sub/Shape_1:output:0*2
_output_shapes 
:���������:���������2)
'gradient_tape/sub/BroadcastGradientArgs�
gradient_tape/sub/SumSumgradient_tape/Mul_1:z:0,gradient_tape/sub/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:2
gradient_tape/sub/Sum�
gradient_tape/sub/ReshapeReshapegradient_tape/sub/Sum:output:0 gradient_tape/sub/Shape:output:0*
T0*#
_output_shapes
:���������2
gradient_tape/sub/Reshape�
PartitionedCallPartitionedCall"gradient_tape/sub/Reshape:output:0 StatefulPartitionedCall:output:1 StatefulPartitionedCall:output:2 StatefulPartitionedCall:output:3 StatefulPartitionedCall:output:4*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������::* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *0
f+R)
'__inference___backward___call___297_3272
PartitionedCall�
SGD/Cast/ReadVariableOpReadVariableOp sgd_cast_readvariableop_resource*
_output_shapes
: *
dtype02
SGD/Cast/ReadVariableOp�
SGD/IdentityIdentitySGD/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 2
SGD/Identity�
SGD/Cast_1/ReadVariableOpReadVariableOp"sgd_cast_1_readvariableop_resource*
_output_shapes
: *
dtype02
SGD/Cast_1/ReadVariableOp�
SGD/Identity_1Identity!SGD/Cast_1/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 2
SGD/Identity_1�
+SGD/SGD/update/ResourceApplyGradientDescentResourceApplyGradientDescent	unknown_0SGD/Identity:output:0PartitionedCall:output:2^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_class

loc:@265*
_output_shapes
 *
use_locking(2-
+SGD/SGD/update/ResourceApplyGradientDescent�
-SGD/SGD/update_1/ResourceApplyGradientDescentResourceApplyGradientDescentunknownSGD/Identity:output:0PartitionedCall:output:1^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_class

loc:@263*
_output_shapes
 *
use_locking(2/
-SGD/SGD/update_1/ResourceApplyGradientDescent�
SGD/SGD/group_depsNoOp,^SGD/SGD/update/ResourceApplyGradientDescent.^SGD/SGD/update_1/ResourceApplyGradientDescent",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 2
SGD/SGD/group_depsu
SGD/SGD/ConstConst^SGD/SGD/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R2
SGD/SGD/Const�
SGD/SGD/AssignAddVariableOpAssignAddVariableOp$sgd_sgd_assignaddvariableop_resourceSGD/SGD/Const:output:0*
_output_shapes
 *
dtype0	2
SGD/SGD/AssignAddVariableOp�
IdentityIdentityMean:output:0^SGD/Cast/ReadVariableOp^SGD/Cast_1/ReadVariableOp^SGD/SGD/AssignAddVariableOp,^SGD/SGD/update/ResourceApplyGradientDescent.^SGD/SGD/update_1/ResourceApplyGradientDescent^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:���������:���������: : : : : 22
SGD/Cast/ReadVariableOpSGD/Cast/ReadVariableOp26
SGD/Cast_1/ReadVariableOpSGD/Cast_1/ReadVariableOp2:
SGD/SGD/AssignAddVariableOpSGD/SGD/AssignAddVariableOp2Z
+SGD/SGD/update/ResourceApplyGradientDescent+SGD/SGD/update/ResourceApplyGradientDescent2^
-SGD/SGD/update_1/ResourceApplyGradientDescent-SGD/SGD/update_1/ResourceApplyGradientDescent22
StatefulPartitionedCallStatefulPartitionedCall:F B
#
_output_shapes
:���������

_user_specified_namex:FB
#
_output_shapes
:���������

_user_specified_namey
�
�
__inference___call___262
x%
readvariableop_resource:)
add_readvariableop_resource:
identity��ReadVariableOp�add/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpZ
mulMulReadVariableOp:value:0x*
T0*#
_output_shapes
:���������2
mul�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOpf
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*#
_output_shapes
:���������2
add}
IdentityIdentityadd:z:0^ReadVariableOp^add/ReadVariableOp*
T0*#
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������: : 2 
ReadVariableOpReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:F B
#
_output_shapes
:���������

_user_specified_namex
�
�
'__inference___backward___call___297_327
placeholder 
gradients_add_grad_shape_mul1
-gradients_add_grad_shape_1_add_readvariableop+
'gradients_mul_grad_shape_readvariableop 
gradients_mul_grad_shape_1_x
identity

identity_1

identity_2q
gradients/grad_ys_0Identityplaceholder*
T0*#
_output_shapes
:���������2
gradients/grad_ys_0�
gradients/add_grad/ShapeShapegradients_add_grad_shape_mul*
T0*
_output_shapes
:2
gradients/add_grad/Shape�
gradients/add_grad/Shape_1Shape-gradients_add_grad_shape_1_add_readvariableop*
T0*
_output_shapes
:2
gradients/add_grad/Shape_1�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/add_grad/Shape:output:0#gradients/add_grad/Shape_1:output:0*2
_output_shapes 
:���������:���������2*
(gradients/add_grad/BroadcastGradientArgs�
gradients/add_grad/SumSumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:2
gradients/add_grad/Sum�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sum:output:0!gradients/add_grad/Shape:output:0*
T0*#
_output_shapes
:���������2
gradients/add_grad/Reshape�
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:2
gradients/add_grad/Sum_1�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*
_output_shapes
:2
gradients/add_grad/Reshape_1�
gradients/mul_grad/ShapeShape'gradients_mul_grad_shape_readvariableop*
T0*
_output_shapes
:2
gradients/mul_grad/Shape�
gradients/mul_grad/Shape_1Shapegradients_mul_grad_shape_1_x*
T0*
_output_shapes
:2
gradients/mul_grad/Shape_1�
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/mul_grad/Shape:output:0#gradients/mul_grad/Shape_1:output:0*2
_output_shapes 
:���������:���������2*
(gradients/mul_grad/BroadcastGradientArgs�
gradients/mul_grad/MulMul#gradients/add_grad/Reshape:output:0gradients_mul_grad_shape_1_x*
T0*#
_output_shapes
:���������2
gradients/mul_grad/Mul�
gradients/mul_grad/SumSumgradients/mul_grad/Mul:z:0-gradients/mul_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:2
gradients/mul_grad/Sum�
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sum:output:0!gradients/mul_grad/Shape:output:0*
T0*
_output_shapes
:2
gradients/mul_grad/Reshape�
gradients/mul_grad/Mul_1Mul'gradients_mul_grad_shape_readvariableop#gradients/add_grad/Reshape:output:0*
T0*#
_output_shapes
:���������2
gradients/mul_grad/Mul_1�
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1:z:0-gradients/mul_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:2
gradients/mul_grad/Sum_1�
gradients/mul_grad/Reshape_1Reshape!gradients/mul_grad/Sum_1:output:0#gradients/mul_grad/Shape_1:output:0*
T0*#
_output_shapes
:���������2
gradients/mul_grad/Reshape_1u
IdentityIdentity%gradients/mul_grad/Reshape_1:output:0*
T0*#
_output_shapes
:���������2

Identityn

Identity_1Identity#gradients/mul_grad/Reshape:output:0*
T0*
_output_shapes
:2

Identity_1p

Identity_2Identity%gradients/add_grad/Reshape_1:output:0*
T0*
_output_shapes
:2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������:���������:::���������*1
forward_function_name__forward___call___326:) %
#
_output_shapes
:���������:)%
#
_output_shapes
:���������: 

_output_shapes
:: 

_output_shapes
::)%
#
_output_shapes
:���������
�
�
__inference__traced_restore_418
file_prefix 
assignvariableop_w:"
assignvariableop_1_b:%
assignvariableop_2_sgd_iter:	 &
assignvariableop_3_sgd_decay: .
$assignvariableop_4_sgd_learning_rate: )
assignvariableop_5_sgd_momentum: 

identity_7��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�Bw/.ATTRIBUTES/VARIABLE_VALUEBb/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_wIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_bIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_sgd_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_sgd_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_sgd_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_momentumIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_6�

Identity_7IdentityIdentity_6:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
T0*
_output_shapes
: 2

Identity_7"!

identity_7Identity_7:output:0*!
_input_shapes
: : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_3:0StatefulPartitionedCall_48"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*P
bK-
output#
StatefulPartitionedCall:0tensorflow/serving/predict*�
train�
!
x
	train_x:0���������
!
y
	train_y:0���������)
loss!
StatefulPartitionedCall_1:0 tensorflow/serving/predict*R
wM/
output%
StatefulPartitionedCall_2:0tensorflow/serving/predict:�
z
w
b
	optimizer

signatures
	__call__
	
get_b
	get_w
	train"
_generic_user_object
:2w
:2b
I
iter
	decay
learning_rate
momentum"
	optimizer
0
	train
w
b"
signature_map
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
�2�
__inference___call___239�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_get_b_244�
���
FullArgSpec
args�
jself
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_get_w_249�
���
FullArgSpec
args�
jself
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_train_346�
���
FullArgSpec
args�
jself
jx
jy
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
!__inference_signature_wrapper_213xy"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
!__inference_signature_wrapper_221"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
!__inference_signature_wrapper_229"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ^
__inference___call___239B&�#
�
�
x���������
� "����������O
__inference_get_b_2446�

� 
� ""�

output�
outputO
__inference_get_w_2496�

� 
� ""�

output�
output�
!__inference_signature_wrapper_213nI�F
� 
?�<

x�
x���������

y�
y���������"�

loss�

loss [
!__inference_signature_wrapper_2216�

� 
� ""�

output�
output[
!__inference_signature_wrapper_2296�

� 
� ""�

output�
output}
__inference_train_346d?�<
5�2
�
x���������
�
y���������
� "�

loss�

loss 