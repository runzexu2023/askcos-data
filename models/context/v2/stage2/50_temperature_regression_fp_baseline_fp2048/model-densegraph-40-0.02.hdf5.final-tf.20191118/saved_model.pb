фЕ
И┘
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
Н
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
delete_old_dirsbool(И
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
-
Sqrt
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
╛
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
executor_typestring И
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8╓√
z
dense_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Г(А*
shared_namedense_0/kernel
s
"dense_0/kernel/Read/ReadVariableOpReadVariableOpdense_0/kernel* 
_output_shapes
:
Г(А*
dtype0
q
dense_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_0/bias
j
 dense_0/bias/Read/ReadVariableOpReadVariableOpdense_0/bias*
_output_shapes	
:А*
dtype0
П
layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namelayer_normalization_1/gamma
И
/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma*
_output_shapes	
:А*
dtype0
Н
layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namelayer_normalization_1/beta
Ж
.layer_normalization_1/beta/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta*
_output_shapes	
:А*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Г8А*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
Г8А*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:А*
dtype0
П
layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namelayer_normalization_2/gamma
И
/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma*
_output_shapes	
:А*
dtype0
Н
layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namelayer_normalization_2/beta
Ж
.layer_normalization_2/beta/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta*
_output_shapes	
:А*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ГHА*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
ГHА*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:А*
dtype0
П
layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namelayer_normalization_3/gamma
И
/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma*
_output_shapes	
:А*
dtype0
Н
layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namelayer_normalization_3/beta
Ж
.layer_normalization_3/beta/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta*
_output_shapes	
:А*
dtype0
Н
output_regression/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ГX*)
shared_nameoutput_regression/kernel
Ж
,output_regression/kernel/Read/ReadVariableOpReadVariableOpoutput_regression/kernel*
_output_shapes
:	ГX*
dtype0
Д
output_regression/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameoutput_regression/bias
}
*output_regression/bias/Read/ReadVariableOpReadVariableOpoutput_regression/bias*
_output_shapes
:*
dtype0
\
iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
~
dense_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Г(А*!
shared_namedense_0/kernel/m
w
$dense_0/kernel/m/Read/ReadVariableOpReadVariableOpdense_0/kernel/m* 
_output_shapes
:
Г(А*
dtype0
u
dense_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_0/bias/m
n
"dense_0/bias/m/Read/ReadVariableOpReadVariableOpdense_0/bias/m*
_output_shapes	
:А*
dtype0
У
layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_namelayer_normalization_1/gamma/m
М
1layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma/m*
_output_shapes	
:А*
dtype0
С
layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namelayer_normalization_1/beta/m
К
0layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta/m*
_output_shapes	
:А*
dtype0
~
dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Г8А*!
shared_namedense_1/kernel/m
w
$dense_1/kernel/m/Read/ReadVariableOpReadVariableOpdense_1/kernel/m* 
_output_shapes
:
Г8А*
dtype0
u
dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_1/bias/m
n
"dense_1/bias/m/Read/ReadVariableOpReadVariableOpdense_1/bias/m*
_output_shapes	
:А*
dtype0
У
layer_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_namelayer_normalization_2/gamma/m
М
1layer_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma/m*
_output_shapes	
:А*
dtype0
С
layer_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namelayer_normalization_2/beta/m
К
0layer_normalization_2/beta/m/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta/m*
_output_shapes	
:А*
dtype0
~
dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ГHА*!
shared_namedense_2/kernel/m
w
$dense_2/kernel/m/Read/ReadVariableOpReadVariableOpdense_2/kernel/m* 
_output_shapes
:
ГHА*
dtype0
u
dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_2/bias/m
n
"dense_2/bias/m/Read/ReadVariableOpReadVariableOpdense_2/bias/m*
_output_shapes	
:А*
dtype0
У
layer_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_namelayer_normalization_3/gamma/m
М
1layer_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma/m*
_output_shapes	
:А*
dtype0
С
layer_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namelayer_normalization_3/beta/m
К
0layer_normalization_3/beta/m/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta/m*
_output_shapes	
:А*
dtype0
С
output_regression/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ГX*+
shared_nameoutput_regression/kernel/m
К
.output_regression/kernel/m/Read/ReadVariableOpReadVariableOpoutput_regression/kernel/m*
_output_shapes
:	ГX*
dtype0
И
output_regression/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameoutput_regression/bias/m
Б
,output_regression/bias/m/Read/ReadVariableOpReadVariableOpoutput_regression/bias/m*
_output_shapes
:*
dtype0
~
dense_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Г(А*!
shared_namedense_0/kernel/v
w
$dense_0/kernel/v/Read/ReadVariableOpReadVariableOpdense_0/kernel/v* 
_output_shapes
:
Г(А*
dtype0
u
dense_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_0/bias/v
n
"dense_0/bias/v/Read/ReadVariableOpReadVariableOpdense_0/bias/v*
_output_shapes	
:А*
dtype0
У
layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_namelayer_normalization_1/gamma/v
М
1layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma/v*
_output_shapes	
:А*
dtype0
С
layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namelayer_normalization_1/beta/v
К
0layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta/v*
_output_shapes	
:А*
dtype0
~
dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Г8А*!
shared_namedense_1/kernel/v
w
$dense_1/kernel/v/Read/ReadVariableOpReadVariableOpdense_1/kernel/v* 
_output_shapes
:
Г8А*
dtype0
u
dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_1/bias/v
n
"dense_1/bias/v/Read/ReadVariableOpReadVariableOpdense_1/bias/v*
_output_shapes	
:А*
dtype0
У
layer_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_namelayer_normalization_2/gamma/v
М
1layer_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma/v*
_output_shapes	
:А*
dtype0
С
layer_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namelayer_normalization_2/beta/v
К
0layer_normalization_2/beta/v/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta/v*
_output_shapes	
:А*
dtype0
~
dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ГHА*!
shared_namedense_2/kernel/v
w
$dense_2/kernel/v/Read/ReadVariableOpReadVariableOpdense_2/kernel/v* 
_output_shapes
:
ГHА*
dtype0
u
dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_2/bias/v
n
"dense_2/bias/v/Read/ReadVariableOpReadVariableOpdense_2/bias/v*
_output_shapes	
:А*
dtype0
У
layer_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_namelayer_normalization_3/gamma/v
М
1layer_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma/v*
_output_shapes	
:А*
dtype0
С
layer_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namelayer_normalization_3/beta/v
К
0layer_normalization_3/beta/v/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta/v*
_output_shapes	
:А*
dtype0
С
output_regression/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ГX*+
shared_nameoutput_regression/kernel/v
К
.output_regression/kernel/v/Read/ReadVariableOpReadVariableOpoutput_regression/kernel/v*
_output_shapes
:	ГX*
dtype0
И
output_regression/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameoutput_regression/bias/v
Б
,output_regression/bias/v/Read/ReadVariableOpReadVariableOpoutput_regression/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
шW
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*гW
valueЩWBЦW BПW
╙
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
 
 
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
g
	gamma
beta
 	variables
!regularization_losses
"trainable_variables
#	keras_api
R
$	variables
%regularization_losses
&trainable_variables
'	keras_api
h

(kernel
)bias
*	variables
+regularization_losses
,trainable_variables
-	keras_api
g
	.gamma
/beta
0	variables
1regularization_losses
2trainable_variables
3	keras_api
R
4	variables
5regularization_losses
6trainable_variables
7	keras_api
h

8kernel
9bias
:	variables
;regularization_losses
<trainable_variables
=	keras_api
g
	>gamma
?beta
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
R
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
h

Hkernel
Ibias
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
╪
Niter

Obeta_1

Pbeta_2
	Qdecay
Rlearning_ratemжmзmиmй(mк)mл.mм/mн8mо9mп>m░?m▒Hm▓Im│v┤v╡v╢v╖(v╕)v╣.v║/v╗8v╝9v╜>v╛?v┐Hv└Iv┴
f
0
1
2
3
(4
)5
.6
/7
88
99
>10
?11
H12
I13
 
f
0
1
2
3
(4
)5
.6
/7
88
99
>10
?11
H12
I13
н
Slayer_metrics

Tlayers
Umetrics
	variables
regularization_losses
Vlayer_regularization_losses
trainable_variables
Wnon_trainable_variables
 
 
 
 
н
Xlayer_metrics

Ylayers
Zmetrics
	variables
regularization_losses
[layer_regularization_losses
trainable_variables
\non_trainable_variables
ZX
VARIABLE_VALUEdense_0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н
]layer_metrics

^layers
_metrics
	variables
regularization_losses
`layer_regularization_losses
trainable_variables
anon_trainable_variables
fd
VARIABLE_VALUElayer_normalization_1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUElayer_normalization_1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н
blayer_metrics

clayers
dmetrics
 	variables
!regularization_losses
elayer_regularization_losses
"trainable_variables
fnon_trainable_variables
 
 
 
н
glayer_metrics

hlayers
imetrics
$	variables
%regularization_losses
jlayer_regularization_losses
&trainable_variables
knon_trainable_variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1
 

(0
)1
н
llayer_metrics

mlayers
nmetrics
*	variables
+regularization_losses
olayer_regularization_losses
,trainable_variables
pnon_trainable_variables
fd
VARIABLE_VALUElayer_normalization_2/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUElayer_normalization_2/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE

.0
/1
 

.0
/1
н
qlayer_metrics

rlayers
smetrics
0	variables
1regularization_losses
tlayer_regularization_losses
2trainable_variables
unon_trainable_variables
 
 
 
н
vlayer_metrics

wlayers
xmetrics
4	variables
5regularization_losses
ylayer_regularization_losses
6trainable_variables
znon_trainable_variables
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

80
91
 

80
91
н
{layer_metrics

|layers
}metrics
:	variables
;regularization_losses
~layer_regularization_losses
<trainable_variables
non_trainable_variables
fd
VARIABLE_VALUElayer_normalization_3/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUElayer_normalization_3/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE

>0
?1
 

>0
?1
▓
Аlayer_metrics
Бlayers
Вmetrics
@	variables
Aregularization_losses
 Гlayer_regularization_losses
Btrainable_variables
Дnon_trainable_variables
 
 
 
▓
Еlayer_metrics
Жlayers
Зmetrics
D	variables
Eregularization_losses
 Иlayer_regularization_losses
Ftrainable_variables
Йnon_trainable_variables
db
VARIABLE_VALUEoutput_regression/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEoutput_regression/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

H0
I1
 

H0
I1
▓
Кlayer_metrics
Лlayers
Мmetrics
J	variables
Kregularization_losses
 Нlayer_regularization_losses
Ltrainable_variables
Оnon_trainable_variables
CA
VARIABLE_VALUEiter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
^
0
1
2
3
4
5
6
7
	8

9
10
11
12
 
П0
Р1
С2
Т3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Уtotal

Фcount
Х	variables
Ц	keras_api
I

Чtotal

Шcount
Щ
_fn_kwargs
Ъ	variables
Ы	keras_api
I

Ьtotal

Эcount
Ю
_fn_kwargs
Я	variables
а	keras_api
I

бtotal

вcount
г
_fn_kwargs
д	variables
е	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

У0
Ф1

Х	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ч0
Ш1

Ъ	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ь0
Э1

Я	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE
 

б0
в1

д	variables
xv
VARIABLE_VALUEdense_0/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_0/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUElayer_normalization_1/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUElayer_normalization_1/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUElayer_normalization_2/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUElayer_normalization_2/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUElayer_normalization_3/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUElayer_normalization_3/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEoutput_regression/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEoutput_regression/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_0/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_0/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUElayer_normalization_1/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUElayer_normalization_1/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUElayer_normalization_2/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUElayer_normalization_2/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUElayer_normalization_3/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUElayer_normalization_3/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEoutput_regression/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEoutput_regression/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
serving_default_Input_fpPlaceholder*(
_output_shapes
:         А *
dtype0*
shape:         А 
В
serving_default_Input_reagentPlaceholder*(
_output_shapes
:         Г*
dtype0*
shape:         Г
д
StatefulPartitionedCallStatefulPartitionedCallserving_default_Input_fpserving_default_Input_reagentdense_0/kerneldense_0/biaslayer_normalization_1/gammalayer_normalization_1/betadense_1/kerneldense_1/biaslayer_normalization_2/gammalayer_normalization_2/betadense_2/kerneldense_2/biaslayer_normalization_3/gammalayer_normalization_3/betaoutput_regression/kerneloutput_regression/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_1273
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
щ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_0/kernel/Read/ReadVariableOp dense_0/bias/Read/ReadVariableOp/layer_normalization_1/gamma/Read/ReadVariableOp.layer_normalization_1/beta/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp/layer_normalization_2/gamma/Read/ReadVariableOp.layer_normalization_2/beta/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp/layer_normalization_3/gamma/Read/ReadVariableOp.layer_normalization_3/beta/Read/ReadVariableOp,output_regression/kernel/Read/ReadVariableOp*output_regression/bias/Read/ReadVariableOpiter/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOp$dense_0/kernel/m/Read/ReadVariableOp"dense_0/bias/m/Read/ReadVariableOp1layer_normalization_1/gamma/m/Read/ReadVariableOp0layer_normalization_1/beta/m/Read/ReadVariableOp$dense_1/kernel/m/Read/ReadVariableOp"dense_1/bias/m/Read/ReadVariableOp1layer_normalization_2/gamma/m/Read/ReadVariableOp0layer_normalization_2/beta/m/Read/ReadVariableOp$dense_2/kernel/m/Read/ReadVariableOp"dense_2/bias/m/Read/ReadVariableOp1layer_normalization_3/gamma/m/Read/ReadVariableOp0layer_normalization_3/beta/m/Read/ReadVariableOp.output_regression/kernel/m/Read/ReadVariableOp,output_regression/bias/m/Read/ReadVariableOp$dense_0/kernel/v/Read/ReadVariableOp"dense_0/bias/v/Read/ReadVariableOp1layer_normalization_1/gamma/v/Read/ReadVariableOp0layer_normalization_1/beta/v/Read/ReadVariableOp$dense_1/kernel/v/Read/ReadVariableOp"dense_1/bias/v/Read/ReadVariableOp1layer_normalization_2/gamma/v/Read/ReadVariableOp0layer_normalization_2/beta/v/Read/ReadVariableOp$dense_2/kernel/v/Read/ReadVariableOp"dense_2/bias/v/Read/ReadVariableOp1layer_normalization_3/gamma/v/Read/ReadVariableOp0layer_normalization_3/beta/v/Read/ReadVariableOp.output_regression/kernel/v/Read/ReadVariableOp,output_regression/bias/v/Read/ReadVariableOpConst*D
Tin=
;29	*
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
GPU 2J 8В *&
f!R
__inference__traced_save_2077
Ш
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_0/kerneldense_0/biaslayer_normalization_1/gammalayer_normalization_1/betadense_1/kerneldense_1/biaslayer_normalization_2/gammalayer_normalization_2/betadense_2/kerneldense_2/biaslayer_normalization_3/gammalayer_normalization_3/betaoutput_regression/kerneloutput_regression/biasiterbeta_1beta_2decaylearning_ratetotalcounttotal_1count_1total_2count_2total_3count_3dense_0/kernel/mdense_0/bias/mlayer_normalization_1/gamma/mlayer_normalization_1/beta/mdense_1/kernel/mdense_1/bias/mlayer_normalization_2/gamma/mlayer_normalization_2/beta/mdense_2/kernel/mdense_2/bias/mlayer_normalization_3/gamma/mlayer_normalization_3/beta/moutput_regression/kernel/moutput_regression/bias/mdense_0/kernel/vdense_0/bias/vlayer_normalization_1/gamma/vlayer_normalization_1/beta/vdense_1/kernel/vdense_1/bias/vlayer_normalization_2/gamma/vlayer_normalization_2/beta/vdense_2/kernel/vdense_2/bias/vlayer_normalization_3/gamma/vlayer_normalization_3/beta/voutput_regression/kernel/voutput_regression/bias/v*C
Tin<
:28*
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
GPU 2J 8В *)
f$R"
 __inference__traced_restore_2252бТ
П8
√
A__inference_model_1_layer_call_and_return_conditional_losses_1080
input_fp
input_reagent
dense_0_1041
dense_0_1043
layer_normalization_1_1046
layer_normalization_1_1048
dense_1_1052
dense_1_1054
layer_normalization_2_1057
layer_normalization_2_1059
dense_2_1063
dense_2_1065
layer_normalization_3_1068
layer_normalization_3_1070
output_regression_1074
output_regression_1076
identityИвdense_0/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallв-layer_normalization_1/StatefulPartitionedCallв-layer_normalization_2/StatefulPartitionedCallв-layer_normalization_3/StatefulPartitionedCallв)output_regression/StatefulPartitionedCallЎ
reagent_concat/PartitionedCallPartitionedCallinput_fpinput_reagent*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Г(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_reagent_concat_layer_call_and_return_conditional_losses_6402 
reagent_concat/PartitionedCallк
dense_0/StatefulPartitionedCallStatefulPartitionedCall'reagent_concat/PartitionedCall:output:0dense_0_1041dense_0_1043*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_0_layer_call_and_return_conditional_losses_6602!
dense_0/StatefulPartitionedCallё
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dense_0/StatefulPartitionedCall:output:0layer_normalization_1_1046layer_normalization_1_1048*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7262/
-layer_normalization_1/StatefulPartitionedCallм
concat_0/PartitionedCallPartitionedCall'reagent_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Г8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_0_layer_call_and_return_conditional_losses_7582
concat_0/PartitionedCallд
dense_1/StatefulPartitionedCallStatefulPartitionedCall!concat_0/PartitionedCall:output:0dense_1_1052dense_1_1054*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_7782!
dense_1/StatefulPartitionedCallё
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0layer_normalization_2_1057layer_normalization_2_1059*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_8442/
-layer_normalization_2/StatefulPartitionedCallх
concat_1/PartitionedCallPartitionedCall'reagent_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ГH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_1_layer_call_and_return_conditional_losses_8772
concat_1/PartitionedCallд
dense_2/StatefulPartitionedCallStatefulPartitionedCall!concat_1/PartitionedCall:output:0dense_2_1063dense_2_1065*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_8982!
dense_2/StatefulPartitionedCallё
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0layer_normalization_3_1068layer_normalization_3_1070*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9642/
-layer_normalization_3/StatefulPartitionedCallЮ
concat_2/PartitionedCallPartitionedCall'reagent_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ГX* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_2_layer_call_and_return_conditional_losses_9982
concat_2/PartitionedCall╓
)output_regression/StatefulPartitionedCallStatefulPartitionedCall!concat_2/PartitionedCall:output:0output_regression_1074output_regression_1076*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_output_regression_layer_call_and_return_conditional_losses_10192+
)output_regression/StatefulPartitionedCallи
IdentityIdentity2output_regression/StatefulPartitionedCall:output:0 ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall*^output_regression/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:         А :         Г::::::::::::::2B
dense_0/StatefulPartitionedCalldense_0/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2V
)output_regression/StatefulPartitionedCall)output_regression/StatefulPartitionedCall:R N
(
_output_shapes
:         А 
"
_user_specified_name
Input_fp:WS
(
_output_shapes
:         Г
'
_user_specified_nameInput_reagent
┘
{
&__inference_dense_2_layer_call_fn_1784

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_8982
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ГH::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ГH
 
_user_specified_nameinputs
Ї	
┌
A__inference_dense_2_layer_call_and_return_conditional_losses_1775

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ГHА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ГH::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ГH
 
_user_specified_nameinputs
Ь	
ф
K__inference_output_regression_layer_call_and_return_conditional_losses_1879

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ГX*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ГX::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ГX
 
_user_specified_nameinputs
∙П
╪

A__inference_model_1_layer_call_and_return_conditional_losses_1479
inputs_0
inputs_1*
&dense_0_matmul_readvariableop_resource+
'dense_0_biasadd_readvariableop_resource5
1layer_normalization_1_mul_readvariableop_resource7
3layer_normalization_1_add_1_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource5
1layer_normalization_2_mul_readvariableop_resource7
3layer_normalization_2_add_1_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource5
1layer_normalization_3_mul_readvariableop_resource7
3layer_normalization_3_add_1_readvariableop_resource4
0output_regression_matmul_readvariableop_resource5
1output_regression_biasadd_readvariableop_resource
identityИвdense_0/BiasAdd/ReadVariableOpвdense_0/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpв*layer_normalization_1/add_1/ReadVariableOpв(layer_normalization_1/mul/ReadVariableOpв*layer_normalization_2/add_1/ReadVariableOpв(layer_normalization_2/mul/ReadVariableOpв*layer_normalization_3/add_1/ReadVariableOpв(layer_normalization_3/mul/ReadVariableOpв(output_regression/BiasAdd/ReadVariableOpв'output_regression/MatMul/ReadVariableOpz
reagent_concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
reagent_concat/concat/axisп
reagent_concat/concatConcatV2inputs_0inputs_1#reagent_concat/concat/axis:output:0*
N*
T0*(
_output_shapes
:         Г(2
reagent_concat/concatз
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource* 
_output_shapes
:
Г(А*
dtype02
dense_0/MatMul/ReadVariableOpд
dense_0/MatMulMatMulreagent_concat/concat:output:0%dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_0/MatMulе
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_0/BiasAdd/ReadVariableOpв
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_0/BiasAddq
dense_0/ReluReludense_0/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_0/Reluз
,layer_normalization_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2.
,layer_normalization_1/Mean/reduction_indices╓
layer_normalization_1/MeanMeandense_0/Relu:activations:05layer_normalization_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
layer_normalization_1/Mean▒
layer_normalization_1/subSubdense_0/Relu:activations:0#layer_normalization_1/Mean:output:0*
T0*(
_output_shapes
:         А2
layer_normalization_1/subШ
layer_normalization_1/SquareSquarelayer_normalization_1/sub:z:0*
T0*(
_output_shapes
:         А2
layer_normalization_1/Squareл
.layer_normalization_1/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         20
.layer_normalization_1/Mean_1/reduction_indicesт
layer_normalization_1/Mean_1Mean layer_normalization_1/Square:y:07layer_normalization_1/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
layer_normalization_1/Mean_1
layer_normalization_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
layer_normalization_1/add/y╛
layer_normalization_1/addAddV2%layer_normalization_1/Mean_1:output:0$layer_normalization_1/add/y:output:0*
T0*'
_output_shapes
:         2
layer_normalization_1/add
layer_normalization_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_normalization_1/ConstГ
layer_normalization_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2
layer_normalization_1/Const_1▐
+layer_normalization_1/clip_by_value/MinimumMinimumlayer_normalization_1/add:z:0&layer_normalization_1/Const_1:output:0*
T0*'
_output_shapes
:         2-
+layer_normalization_1/clip_by_value/Minimum▐
#layer_normalization_1/clip_by_valueMaximum/layer_normalization_1/clip_by_value/Minimum:z:0$layer_normalization_1/Const:output:0*
T0*'
_output_shapes
:         2%
#layer_normalization_1/clip_by_valueЫ
layer_normalization_1/SqrtSqrt'layer_normalization_1/clip_by_value:z:0*
T0*'
_output_shapes
:         2
layer_normalization_1/Sqrt╡
layer_normalization_1/sub_1Subdense_0/Relu:activations:0#layer_normalization_1/Mean:output:0*
T0*(
_output_shapes
:         А2
layer_normalization_1/sub_1╜
layer_normalization_1/truedivRealDivlayer_normalization_1/sub_1:z:0layer_normalization_1/Sqrt:y:0*
T0*(
_output_shapes
:         А2
layer_normalization_1/truediv├
(layer_normalization_1/mul/ReadVariableOpReadVariableOp1layer_normalization_1_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(layer_normalization_1/mul/ReadVariableOp┼
layer_normalization_1/mulMul!layer_normalization_1/truediv:z:00layer_normalization_1/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
layer_normalization_1/mul╔
*layer_normalization_1/add_1/ReadVariableOpReadVariableOp3layer_normalization_1_add_1_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*layer_normalization_1/add_1/ReadVariableOp╔
layer_normalization_1/add_1AddV2layer_normalization_1/mul:z:02layer_normalization_1/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
layer_normalization_1/add_1n
concat_0/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_0/concat/axis╩
concat_0/concatConcatV2reagent_concat/concat:output:0layer_normalization_1/add_1:z:0concat_0/concat/axis:output:0*
N*
T0*(
_output_shapes
:         Г82
concat_0/concatз
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
Г8А*
dtype02
dense_1/MatMul/ReadVariableOpЮ
dense_1/MatMulMatMulconcat_0/concat:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_1/MatMulе
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_1/BiasAdd/ReadVariableOpв
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_1/Reluз
,layer_normalization_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2.
,layer_normalization_2/Mean/reduction_indices╓
layer_normalization_2/MeanMeandense_1/Relu:activations:05layer_normalization_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
layer_normalization_2/Mean▒
layer_normalization_2/subSubdense_1/Relu:activations:0#layer_normalization_2/Mean:output:0*
T0*(
_output_shapes
:         А2
layer_normalization_2/subШ
layer_normalization_2/SquareSquarelayer_normalization_2/sub:z:0*
T0*(
_output_shapes
:         А2
layer_normalization_2/Squareл
.layer_normalization_2/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         20
.layer_normalization_2/Mean_1/reduction_indicesт
layer_normalization_2/Mean_1Mean layer_normalization_2/Square:y:07layer_normalization_2/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
layer_normalization_2/Mean_1
layer_normalization_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
layer_normalization_2/add/y╛
layer_normalization_2/addAddV2%layer_normalization_2/Mean_1:output:0$layer_normalization_2/add/y:output:0*
T0*'
_output_shapes
:         2
layer_normalization_2/add
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_normalization_2/ConstГ
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2
layer_normalization_2/Const_1▐
+layer_normalization_2/clip_by_value/MinimumMinimumlayer_normalization_2/add:z:0&layer_normalization_2/Const_1:output:0*
T0*'
_output_shapes
:         2-
+layer_normalization_2/clip_by_value/Minimum▐
#layer_normalization_2/clip_by_valueMaximum/layer_normalization_2/clip_by_value/Minimum:z:0$layer_normalization_2/Const:output:0*
T0*'
_output_shapes
:         2%
#layer_normalization_2/clip_by_valueЫ
layer_normalization_2/SqrtSqrt'layer_normalization_2/clip_by_value:z:0*
T0*'
_output_shapes
:         2
layer_normalization_2/Sqrt╡
layer_normalization_2/sub_1Subdense_1/Relu:activations:0#layer_normalization_2/Mean:output:0*
T0*(
_output_shapes
:         А2
layer_normalization_2/sub_1╜
layer_normalization_2/truedivRealDivlayer_normalization_2/sub_1:z:0layer_normalization_2/Sqrt:y:0*
T0*(
_output_shapes
:         А2
layer_normalization_2/truediv├
(layer_normalization_2/mul/ReadVariableOpReadVariableOp1layer_normalization_2_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(layer_normalization_2/mul/ReadVariableOp┼
layer_normalization_2/mulMul!layer_normalization_2/truediv:z:00layer_normalization_2/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
layer_normalization_2/mul╔
*layer_normalization_2/add_1/ReadVariableOpReadVariableOp3layer_normalization_2_add_1_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*layer_normalization_2/add_1/ReadVariableOp╔
layer_normalization_2/add_1AddV2layer_normalization_2/mul:z:02layer_normalization_2/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
layer_normalization_2/add_1n
concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/concat/axisы
concat_1/concatConcatV2reagent_concat/concat:output:0layer_normalization_1/add_1:z:0layer_normalization_2/add_1:z:0concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:         ГH2
concat_1/concatз
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ГHА*
dtype02
dense_2/MatMul/ReadVariableOpЮ
dense_2/MatMulMatMulconcat_1/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_2/MatMulе
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_2/BiasAdd/ReadVariableOpв
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_2/Reluз
,layer_normalization_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2.
,layer_normalization_3/Mean/reduction_indices╓
layer_normalization_3/MeanMeandense_2/Relu:activations:05layer_normalization_3/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
layer_normalization_3/Mean▒
layer_normalization_3/subSubdense_2/Relu:activations:0#layer_normalization_3/Mean:output:0*
T0*(
_output_shapes
:         А2
layer_normalization_3/subШ
layer_normalization_3/SquareSquarelayer_normalization_3/sub:z:0*
T0*(
_output_shapes
:         А2
layer_normalization_3/Squareл
.layer_normalization_3/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         20
.layer_normalization_3/Mean_1/reduction_indicesт
layer_normalization_3/Mean_1Mean layer_normalization_3/Square:y:07layer_normalization_3/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
layer_normalization_3/Mean_1
layer_normalization_3/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
layer_normalization_3/add/y╛
layer_normalization_3/addAddV2%layer_normalization_3/Mean_1:output:0$layer_normalization_3/add/y:output:0*
T0*'
_output_shapes
:         2
layer_normalization_3/add
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_normalization_3/ConstГ
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2
layer_normalization_3/Const_1▐
+layer_normalization_3/clip_by_value/MinimumMinimumlayer_normalization_3/add:z:0&layer_normalization_3/Const_1:output:0*
T0*'
_output_shapes
:         2-
+layer_normalization_3/clip_by_value/Minimum▐
#layer_normalization_3/clip_by_valueMaximum/layer_normalization_3/clip_by_value/Minimum:z:0$layer_normalization_3/Const:output:0*
T0*'
_output_shapes
:         2%
#layer_normalization_3/clip_by_valueЫ
layer_normalization_3/SqrtSqrt'layer_normalization_3/clip_by_value:z:0*
T0*'
_output_shapes
:         2
layer_normalization_3/Sqrt╡
layer_normalization_3/sub_1Subdense_2/Relu:activations:0#layer_normalization_3/Mean:output:0*
T0*(
_output_shapes
:         А2
layer_normalization_3/sub_1╜
layer_normalization_3/truedivRealDivlayer_normalization_3/sub_1:z:0layer_normalization_3/Sqrt:y:0*
T0*(
_output_shapes
:         А2
layer_normalization_3/truediv├
(layer_normalization_3/mul/ReadVariableOpReadVariableOp1layer_normalization_3_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(layer_normalization_3/mul/ReadVariableOp┼
layer_normalization_3/mulMul!layer_normalization_3/truediv:z:00layer_normalization_3/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
layer_normalization_3/mul╔
*layer_normalization_3/add_1/ReadVariableOpReadVariableOp3layer_normalization_3_add_1_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*layer_normalization_3/add_1/ReadVariableOp╔
layer_normalization_3/add_1AddV2layer_normalization_3/mul:z:02layer_normalization_3/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
layer_normalization_3/add_1n
concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/concat/axisМ
concat_2/concatConcatV2reagent_concat/concat:output:0layer_normalization_1/add_1:z:0layer_normalization_2/add_1:z:0layer_normalization_3/add_1:z:0concat_2/concat/axis:output:0*
N*
T0*(
_output_shapes
:         ГX2
concat_2/concat─
'output_regression/MatMul/ReadVariableOpReadVariableOp0output_regression_matmul_readvariableop_resource*
_output_shapes
:	ГX*
dtype02)
'output_regression/MatMul/ReadVariableOp╗
output_regression/MatMulMatMulconcat_2/concat:output:0/output_regression/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
output_regression/MatMul┬
(output_regression/BiasAdd/ReadVariableOpReadVariableOp1output_regression_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(output_regression/BiasAdd/ReadVariableOp╔
output_regression/BiasAddBiasAdd"output_regression/MatMul:product:00output_regression/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
output_regression/BiasAddЦ
IdentityIdentity"output_regression/BiasAdd:output:0^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp+^layer_normalization_1/add_1/ReadVariableOp)^layer_normalization_1/mul/ReadVariableOp+^layer_normalization_2/add_1/ReadVariableOp)^layer_normalization_2/mul/ReadVariableOp+^layer_normalization_3/add_1/ReadVariableOp)^layer_normalization_3/mul/ReadVariableOp)^output_regression/BiasAdd/ReadVariableOp(^output_regression/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:         А :         Г::::::::::::::2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2X
*layer_normalization_1/add_1/ReadVariableOp*layer_normalization_1/add_1/ReadVariableOp2T
(layer_normalization_1/mul/ReadVariableOp(layer_normalization_1/mul/ReadVariableOp2X
*layer_normalization_2/add_1/ReadVariableOp*layer_normalization_2/add_1/ReadVariableOp2T
(layer_normalization_2/mul/ReadVariableOp(layer_normalization_2/mul/ReadVariableOp2X
*layer_normalization_3/add_1/ReadVariableOp*layer_normalization_3/add_1/ReadVariableOp2T
(layer_normalization_3/mul/ReadVariableOp(layer_normalization_3/mul/ReadVariableOp2T
(output_regression/BiasAdd/ReadVariableOp(output_regression/BiasAdd/ReadVariableOp2R
'output_regression/MatMul/ReadVariableOp'output_regression/MatMul/ReadVariableOp:R N
(
_output_shapes
:         А 
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         Г
"
_user_specified_name
inputs/1
вm
р
__inference__traced_save_2077
file_prefix-
)savev2_dense_0_kernel_read_readvariableop+
'savev2_dense_0_bias_read_readvariableop:
6savev2_layer_normalization_1_gamma_read_readvariableop9
5savev2_layer_normalization_1_beta_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop:
6savev2_layer_normalization_2_gamma_read_readvariableop9
5savev2_layer_normalization_2_beta_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop:
6savev2_layer_normalization_3_gamma_read_readvariableop9
5savev2_layer_normalization_3_beta_read_readvariableop7
3savev2_output_regression_kernel_read_readvariableop5
1savev2_output_regression_bias_read_readvariableop#
savev2_iter_read_readvariableop	%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop/
+savev2_dense_0_kernel_m_read_readvariableop-
)savev2_dense_0_bias_m_read_readvariableop<
8savev2_layer_normalization_1_gamma_m_read_readvariableop;
7savev2_layer_normalization_1_beta_m_read_readvariableop/
+savev2_dense_1_kernel_m_read_readvariableop-
)savev2_dense_1_bias_m_read_readvariableop<
8savev2_layer_normalization_2_gamma_m_read_readvariableop;
7savev2_layer_normalization_2_beta_m_read_readvariableop/
+savev2_dense_2_kernel_m_read_readvariableop-
)savev2_dense_2_bias_m_read_readvariableop<
8savev2_layer_normalization_3_gamma_m_read_readvariableop;
7savev2_layer_normalization_3_beta_m_read_readvariableop9
5savev2_output_regression_kernel_m_read_readvariableop7
3savev2_output_regression_bias_m_read_readvariableop/
+savev2_dense_0_kernel_v_read_readvariableop-
)savev2_dense_0_bias_v_read_readvariableop<
8savev2_layer_normalization_1_gamma_v_read_readvariableop;
7savev2_layer_normalization_1_beta_v_read_readvariableop/
+savev2_dense_1_kernel_v_read_readvariableop-
)savev2_dense_1_bias_v_read_readvariableop<
8savev2_layer_normalization_2_gamma_v_read_readvariableop;
7savev2_layer_normalization_2_beta_v_read_readvariableop/
+savev2_dense_2_kernel_v_read_readvariableop-
)savev2_dense_2_bias_v_read_readvariableop<
8savev2_layer_normalization_3_gamma_v_read_readvariableop;
7savev2_layer_normalization_3_beta_v_read_readvariableop9
5savev2_output_regression_kernel_v_read_readvariableop7
3savev2_output_regression_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename├
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*╒
value╦B╚8B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names∙
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*Г
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЛ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_0_kernel_read_readvariableop'savev2_dense_0_bias_read_readvariableop6savev2_layer_normalization_1_gamma_read_readvariableop5savev2_layer_normalization_1_beta_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop6savev2_layer_normalization_2_gamma_read_readvariableop5savev2_layer_normalization_2_beta_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop6savev2_layer_normalization_3_gamma_read_readvariableop5savev2_layer_normalization_3_beta_read_readvariableop3savev2_output_regression_kernel_read_readvariableop1savev2_output_regression_bias_read_readvariableopsavev2_iter_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop+savev2_dense_0_kernel_m_read_readvariableop)savev2_dense_0_bias_m_read_readvariableop8savev2_layer_normalization_1_gamma_m_read_readvariableop7savev2_layer_normalization_1_beta_m_read_readvariableop+savev2_dense_1_kernel_m_read_readvariableop)savev2_dense_1_bias_m_read_readvariableop8savev2_layer_normalization_2_gamma_m_read_readvariableop7savev2_layer_normalization_2_beta_m_read_readvariableop+savev2_dense_2_kernel_m_read_readvariableop)savev2_dense_2_bias_m_read_readvariableop8savev2_layer_normalization_3_gamma_m_read_readvariableop7savev2_layer_normalization_3_beta_m_read_readvariableop5savev2_output_regression_kernel_m_read_readvariableop3savev2_output_regression_bias_m_read_readvariableop+savev2_dense_0_kernel_v_read_readvariableop)savev2_dense_0_bias_v_read_readvariableop8savev2_layer_normalization_1_gamma_v_read_readvariableop7savev2_layer_normalization_1_beta_v_read_readvariableop+savev2_dense_1_kernel_v_read_readvariableop)savev2_dense_1_bias_v_read_readvariableop8savev2_layer_normalization_2_gamma_v_read_readvariableop7savev2_layer_normalization_2_beta_v_read_readvariableop+savev2_dense_2_kernel_v_read_readvariableop)savev2_dense_2_bias_v_read_readvariableop8savev2_layer_normalization_3_gamma_v_read_readvariableop7savev2_layer_normalization_3_beta_v_read_readvariableop5savev2_output_regression_kernel_v_read_readvariableop3savev2_output_regression_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *F
dtypes<
:28	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*П
_input_shapes¤
·: :
Г(А:А:А:А:
Г8А:А:А:А:
ГHА:А:А:А:	ГX:: : : : : : : : : : : : : :
Г(А:А:А:А:
Г8А:А:А:А:
ГHА:А:А:А:	ГX::
Г(А:А:А:А:
Г8А:А:А:А:
ГHА:А:А:А:	ГX:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
Г(А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:&"
 
_output_shapes
:
Г8А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:&	"
 
_output_shapes
:
ГHА:!


_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:%!

_output_shapes
:	ГX: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
Г(А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:& "
 
_output_shapes
:
Г8А:!!

_output_shapes	
:А:!"

_output_shapes	
:А:!#

_output_shapes	
:А:&$"
 
_output_shapes
:
ГHА:!%

_output_shapes	
:А:!&

_output_shapes	
:А:!'

_output_shapes	
:А:%(!

_output_shapes
:	ГX: )

_output_shapes
::&*"
 
_output_shapes
:
Г(А:!+

_output_shapes	
:А:!,

_output_shapes	
:А:!-

_output_shapes	
:А:&."
 
_output_shapes
:
Г8А:!/

_output_shapes	
:А:!0

_output_shapes	
:А:!1

_output_shapes	
:А:&2"
 
_output_shapes
:
ГHА:!3

_output_shapes	
:А:!4

_output_shapes	
:А:!5

_output_shapes	
:А:%6!

_output_shapes
:	ГX: 7

_output_shapes
::8

_output_shapes
: 
┤
k
A__inference_concat_0_layer_call_and_return_conditional_losses_758

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisА
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:         Г82
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:         Г82

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         Г(:         А:P L
(
_output_shapes
:         Г(
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinputs
╗
▐
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1605

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identityИвadd_1/ReadVariableOpвmul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean/reduction_indicesА
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:         А2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:         А2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean_1/reduction_indicesК
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:         2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2	
Const_1Ж
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:         2
clip_by_value/MinimumЖ
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:         2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:         2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:         А2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:         А2	
truedivБ
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:А*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
mulЗ
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
add_1К
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ї

╟
&__inference_model_1_layer_call_fn_1159
input_fp
input_reagent
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinput_fpinput_reagentunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_11282
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:         А :         Г::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:         А 
"
_user_specified_name
Input_fp:WS
(
_output_shapes
:         Г
'
_user_specified_nameInput_reagent
Щ
a
'__inference_concat_1_layer_call_fn_1764
inputs_0
inputs_1
inputs_2
identity╪
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ГH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_1_layer_call_and_return_conditional_losses_8772
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ГH2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:         Г(:         А:         А:R N
(
_output_shapes
:         Г(
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/2
║
▌
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_939

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identityИвadd_1/ReadVariableOpвmul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean/reduction_indicesА
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:         А2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:         А2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean_1/reduction_indicesК
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:         2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2	
Const_1Ж
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:         2
clip_by_value/MinimumЖ
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:         2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:         2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:         А2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:         А2	
truedivБ
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:А*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
mulЗ
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
add_1К
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╗
▐
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1630

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identityИвadd_1/ReadVariableOpвmul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean/reduction_indicesА
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:         А2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:         А2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean_1/reduction_indicesК
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:         2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2	
Const_1Ж
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:         2
clip_by_value/MinimumЖ
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:         2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:         2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:         А2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:         А2	
truedivБ
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:А*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
mulЗ
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
add_1К
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ў
Й
4__inference_layer_normalization_1_layer_call_fn_1648

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7262
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
║
q
G__inference_reagent_concat_layer_call_and_return_conditional_losses_640

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisА
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:         Г(2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:         Г(2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         А :         Г:P L
(
_output_shapes
:         А 
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Г
 
_user_specified_nameinputs
├
t
H__inference_reagent_concat_layer_call_and_return_conditional_losses_1554
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisВ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:         Г(2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:         Г(2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         А :         Г:R N
(
_output_shapes
:         А 
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         Г
"
_user_specified_name
inputs/1
╗
▐
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1706

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identityИвadd_1/ReadVariableOpвmul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean/reduction_indicesА
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:         А2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:         А2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean_1/reduction_indicesК
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:         2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2	
Const_1Ж
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:         2
clip_by_value/MinimumЖ
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:         2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:         2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:         А2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:         А2	
truedivБ
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:А*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
mulЗ
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
add_1К
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
║
▌
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_964

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identityИвadd_1/ReadVariableOpвmul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean/reduction_indicesА
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:         А2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:         А2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean_1/reduction_indicesК
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:         2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2	
Const_1Ж
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:         2
clip_by_value/MinimumЖ
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:         2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:         2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:         А2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:         А2	
truedivБ
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:А*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
mulЗ
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
add_1К
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ў
Й
4__inference_layer_normalization_1_layer_call_fn_1639

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7012
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╗
▐
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_1834

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identityИвadd_1/ReadVariableOpвmul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean/reduction_indicesА
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:         А2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:         А2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean_1/reduction_indicesК
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:         2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2	
Const_1Ж
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:         2
clip_by_value/MinimumЖ
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:         2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:         2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:         А2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:         А2	
truedivБ
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:А*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
mulЗ
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
add_1К
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┘
{
&__inference_dense_1_layer_call_fn_1681

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_7782
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         Г8::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         Г8
 
_user_specified_nameinputs
▐ц
▐
 __inference__traced_restore_2252
file_prefix#
assignvariableop_dense_0_kernel#
assignvariableop_1_dense_0_bias2
.assignvariableop_2_layer_normalization_1_gamma1
-assignvariableop_3_layer_normalization_1_beta%
!assignvariableop_4_dense_1_kernel#
assignvariableop_5_dense_1_bias2
.assignvariableop_6_layer_normalization_2_gamma1
-assignvariableop_7_layer_normalization_2_beta%
!assignvariableop_8_dense_2_kernel#
assignvariableop_9_dense_2_bias3
/assignvariableop_10_layer_normalization_3_gamma2
.assignvariableop_11_layer_normalization_3_beta0
,assignvariableop_12_output_regression_kernel.
*assignvariableop_13_output_regression_bias
assignvariableop_14_iter
assignvariableop_15_beta_1
assignvariableop_16_beta_2
assignvariableop_17_decay%
!assignvariableop_18_learning_rate
assignvariableop_19_total
assignvariableop_20_count
assignvariableop_21_total_1
assignvariableop_22_count_1
assignvariableop_23_total_2
assignvariableop_24_count_2
assignvariableop_25_total_3
assignvariableop_26_count_3(
$assignvariableop_27_dense_0_kernel_m&
"assignvariableop_28_dense_0_bias_m5
1assignvariableop_29_layer_normalization_1_gamma_m4
0assignvariableop_30_layer_normalization_1_beta_m(
$assignvariableop_31_dense_1_kernel_m&
"assignvariableop_32_dense_1_bias_m5
1assignvariableop_33_layer_normalization_2_gamma_m4
0assignvariableop_34_layer_normalization_2_beta_m(
$assignvariableop_35_dense_2_kernel_m&
"assignvariableop_36_dense_2_bias_m5
1assignvariableop_37_layer_normalization_3_gamma_m4
0assignvariableop_38_layer_normalization_3_beta_m2
.assignvariableop_39_output_regression_kernel_m0
,assignvariableop_40_output_regression_bias_m(
$assignvariableop_41_dense_0_kernel_v&
"assignvariableop_42_dense_0_bias_v5
1assignvariableop_43_layer_normalization_1_gamma_v4
0assignvariableop_44_layer_normalization_1_beta_v(
$assignvariableop_45_dense_1_kernel_v&
"assignvariableop_46_dense_1_bias_v5
1assignvariableop_47_layer_normalization_2_gamma_v4
0assignvariableop_48_layer_normalization_2_beta_v(
$assignvariableop_49_dense_2_kernel_v&
"assignvariableop_50_dense_2_bias_v5
1assignvariableop_51_layer_normalization_3_gamma_v4
0assignvariableop_52_layer_normalization_3_beta_v2
.assignvariableop_53_output_regression_kernel_v0
,assignvariableop_54_output_regression_bias_v
identity_56ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9╔
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*╒
value╦B╚8B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names 
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*Г
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices╞
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ў
_output_shapesу
р::::::::::::::::::::::::::::::::::::::::::::::::::::::::*F
dtypes<
:28	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЮ
AssignVariableOpAssignVariableOpassignvariableop_dense_0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1д
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2│
AssignVariableOp_2AssignVariableOp.assignvariableop_2_layer_normalization_1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3▓
AssignVariableOp_3AssignVariableOp-assignvariableop_3_layer_normalization_1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4ж
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5д
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6│
AssignVariableOp_6AssignVariableOp.assignvariableop_6_layer_normalization_2_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7▓
AssignVariableOp_7AssignVariableOp-assignvariableop_7_layer_normalization_2_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8ж
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9д
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10╖
AssignVariableOp_10AssignVariableOp/assignvariableop_10_layer_normalization_3_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11╢
AssignVariableOp_11AssignVariableOp.assignvariableop_11_layer_normalization_3_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12┤
AssignVariableOp_12AssignVariableOp,assignvariableop_12_output_regression_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13▓
AssignVariableOp_13AssignVariableOp*assignvariableop_13_output_regression_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14а
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15в
AssignVariableOp_15AssignVariableOpassignvariableop_15_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16в
AssignVariableOp_16AssignVariableOpassignvariableop_16_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17б
AssignVariableOp_17AssignVariableOpassignvariableop_17_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18й
AssignVariableOp_18AssignVariableOp!assignvariableop_18_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19б
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20б
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21г
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22г
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23г
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_2Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24г
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_2Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25г
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_3Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26г
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_3Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27м
AssignVariableOp_27AssignVariableOp$assignvariableop_27_dense_0_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28к
AssignVariableOp_28AssignVariableOp"assignvariableop_28_dense_0_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29╣
AssignVariableOp_29AssignVariableOp1assignvariableop_29_layer_normalization_1_gamma_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30╕
AssignVariableOp_30AssignVariableOp0assignvariableop_30_layer_normalization_1_beta_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31м
AssignVariableOp_31AssignVariableOp$assignvariableop_31_dense_1_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32к
AssignVariableOp_32AssignVariableOp"assignvariableop_32_dense_1_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33╣
AssignVariableOp_33AssignVariableOp1assignvariableop_33_layer_normalization_2_gamma_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34╕
AssignVariableOp_34AssignVariableOp0assignvariableop_34_layer_normalization_2_beta_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35м
AssignVariableOp_35AssignVariableOp$assignvariableop_35_dense_2_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36к
AssignVariableOp_36AssignVariableOp"assignvariableop_36_dense_2_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37╣
AssignVariableOp_37AssignVariableOp1assignvariableop_37_layer_normalization_3_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38╕
AssignVariableOp_38AssignVariableOp0assignvariableop_38_layer_normalization_3_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39╢
AssignVariableOp_39AssignVariableOp.assignvariableop_39_output_regression_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40┤
AssignVariableOp_40AssignVariableOp,assignvariableop_40_output_regression_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41м
AssignVariableOp_41AssignVariableOp$assignvariableop_41_dense_0_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42к
AssignVariableOp_42AssignVariableOp"assignvariableop_42_dense_0_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43╣
AssignVariableOp_43AssignVariableOp1assignvariableop_43_layer_normalization_1_gamma_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44╕
AssignVariableOp_44AssignVariableOp0assignvariableop_44_layer_normalization_1_beta_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45м
AssignVariableOp_45AssignVariableOp$assignvariableop_45_dense_1_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46к
AssignVariableOp_46AssignVariableOp"assignvariableop_46_dense_1_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47╣
AssignVariableOp_47AssignVariableOp1assignvariableop_47_layer_normalization_2_gamma_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48╕
AssignVariableOp_48AssignVariableOp0assignvariableop_48_layer_normalization_2_beta_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49м
AssignVariableOp_49AssignVariableOp$assignvariableop_49_dense_2_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50к
AssignVariableOp_50AssignVariableOp"assignvariableop_50_dense_2_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51╣
AssignVariableOp_51AssignVariableOp1assignvariableop_51_layer_normalization_3_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52╕
AssignVariableOp_52AssignVariableOp0assignvariableop_52_layer_normalization_3_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53╢
AssignVariableOp_53AssignVariableOp.assignvariableop_53_output_regression_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54┤
AssignVariableOp_54AssignVariableOp,assignvariableop_54_output_regression_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_549
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpШ

Identity_55Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_55Л

Identity_56IdentityIdentity_55:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_56"#
identity_56Identity_56:output:0*є
_input_shapesс
▐: :::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ь	
ф
K__inference_output_regression_layer_call_and_return_conditional_losses_1019

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ГX*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ГX::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ГX
 
_user_specified_nameinputs
╜
|
B__inference_concat_1_layer_call_and_return_conditional_losses_1757
inputs_0
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisМ
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*(
_output_shapes
:         ГH2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:         ГH2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:         Г(:         А:         А:R N
(
_output_shapes
:         Г(
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/2
╬

├
"__inference_signature_wrapper_1273
input_fp
input_reagent
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinput_fpinput_reagentunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__wrapped_model_6282
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:         А :         Г::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:         А 
"
_user_specified_name
Input_fp:WS
(
_output_shapes
:         Г
'
_user_specified_nameInput_reagent
║
▌
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_726

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identityИвadd_1/ReadVariableOpвmul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean/reduction_indicesА
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:         А2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:         А2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean_1/reduction_indicesК
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:         2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2	
Const_1Ж
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:         2
clip_by_value/MinimumЖ
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:         2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:         2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:         А2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:         А2	
truedivБ
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:А*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
mulЗ
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
add_1К
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
д
Y
-__inference_reagent_concat_layer_call_fn_1560
inputs_0
inputs_1
identity╙
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Г(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_reagent_concat_layer_call_and_return_conditional_losses_6402
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         Г(2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         А :         Г:R N
(
_output_shapes
:         А 
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         Г
"
_user_specified_name
inputs/1
че
Ъ
__inference__wrapped_model_628
input_fp
input_reagent2
.model_1_dense_0_matmul_readvariableop_resource3
/model_1_dense_0_biasadd_readvariableop_resource=
9model_1_layer_normalization_1_mul_readvariableop_resource?
;model_1_layer_normalization_1_add_1_readvariableop_resource2
.model_1_dense_1_matmul_readvariableop_resource3
/model_1_dense_1_biasadd_readvariableop_resource=
9model_1_layer_normalization_2_mul_readvariableop_resource?
;model_1_layer_normalization_2_add_1_readvariableop_resource2
.model_1_dense_2_matmul_readvariableop_resource3
/model_1_dense_2_biasadd_readvariableop_resource=
9model_1_layer_normalization_3_mul_readvariableop_resource?
;model_1_layer_normalization_3_add_1_readvariableop_resource<
8model_1_output_regression_matmul_readvariableop_resource=
9model_1_output_regression_biasadd_readvariableop_resource
identityИв&model_1/dense_0/BiasAdd/ReadVariableOpв%model_1/dense_0/MatMul/ReadVariableOpв&model_1/dense_1/BiasAdd/ReadVariableOpв%model_1/dense_1/MatMul/ReadVariableOpв&model_1/dense_2/BiasAdd/ReadVariableOpв%model_1/dense_2/MatMul/ReadVariableOpв2model_1/layer_normalization_1/add_1/ReadVariableOpв0model_1/layer_normalization_1/mul/ReadVariableOpв2model_1/layer_normalization_2/add_1/ReadVariableOpв0model_1/layer_normalization_2/mul/ReadVariableOpв2model_1/layer_normalization_3/add_1/ReadVariableOpв0model_1/layer_normalization_3/mul/ReadVariableOpв0model_1/output_regression/BiasAdd/ReadVariableOpв/model_1/output_regression/MatMul/ReadVariableOpК
"model_1/reagent_concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_1/reagent_concat/concat/axis╠
model_1/reagent_concat/concatConcatV2input_fpinput_reagent+model_1/reagent_concat/concat/axis:output:0*
N*
T0*(
_output_shapes
:         Г(2
model_1/reagent_concat/concat┐
%model_1/dense_0/MatMul/ReadVariableOpReadVariableOp.model_1_dense_0_matmul_readvariableop_resource* 
_output_shapes
:
Г(А*
dtype02'
%model_1/dense_0/MatMul/ReadVariableOp─
model_1/dense_0/MatMulMatMul&model_1/reagent_concat/concat:output:0-model_1/dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model_1/dense_0/MatMul╜
&model_1/dense_0/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_0_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02(
&model_1/dense_0/BiasAdd/ReadVariableOp┬
model_1/dense_0/BiasAddBiasAdd model_1/dense_0/MatMul:product:0.model_1/dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model_1/dense_0/BiasAddЙ
model_1/dense_0/ReluRelu model_1/dense_0/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
model_1/dense_0/Relu╖
4model_1/layer_normalization_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         26
4model_1/layer_normalization_1/Mean/reduction_indicesЎ
"model_1/layer_normalization_1/MeanMean"model_1/dense_0/Relu:activations:0=model_1/layer_normalization_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2$
"model_1/layer_normalization_1/Mean╤
!model_1/layer_normalization_1/subSub"model_1/dense_0/Relu:activations:0+model_1/layer_normalization_1/Mean:output:0*
T0*(
_output_shapes
:         А2#
!model_1/layer_normalization_1/sub░
$model_1/layer_normalization_1/SquareSquare%model_1/layer_normalization_1/sub:z:0*
T0*(
_output_shapes
:         А2&
$model_1/layer_normalization_1/Square╗
6model_1/layer_normalization_1/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         28
6model_1/layer_normalization_1/Mean_1/reduction_indicesВ
$model_1/layer_normalization_1/Mean_1Mean(model_1/layer_normalization_1/Square:y:0?model_1/layer_normalization_1/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2&
$model_1/layer_normalization_1/Mean_1П
#model_1/layer_normalization_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2%
#model_1/layer_normalization_1/add/y▐
!model_1/layer_normalization_1/addAddV2-model_1/layer_normalization_1/Mean_1:output:0,model_1/layer_normalization_1/add/y:output:0*
T0*'
_output_shapes
:         2#
!model_1/layer_normalization_1/addП
#model_1/layer_normalization_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#model_1/layer_normalization_1/ConstУ
%model_1/layer_normalization_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2'
%model_1/layer_normalization_1/Const_1■
3model_1/layer_normalization_1/clip_by_value/MinimumMinimum%model_1/layer_normalization_1/add:z:0.model_1/layer_normalization_1/Const_1:output:0*
T0*'
_output_shapes
:         25
3model_1/layer_normalization_1/clip_by_value/Minimum■
+model_1/layer_normalization_1/clip_by_valueMaximum7model_1/layer_normalization_1/clip_by_value/Minimum:z:0,model_1/layer_normalization_1/Const:output:0*
T0*'
_output_shapes
:         2-
+model_1/layer_normalization_1/clip_by_value│
"model_1/layer_normalization_1/SqrtSqrt/model_1/layer_normalization_1/clip_by_value:z:0*
T0*'
_output_shapes
:         2$
"model_1/layer_normalization_1/Sqrt╒
#model_1/layer_normalization_1/sub_1Sub"model_1/dense_0/Relu:activations:0+model_1/layer_normalization_1/Mean:output:0*
T0*(
_output_shapes
:         А2%
#model_1/layer_normalization_1/sub_1▌
%model_1/layer_normalization_1/truedivRealDiv'model_1/layer_normalization_1/sub_1:z:0&model_1/layer_normalization_1/Sqrt:y:0*
T0*(
_output_shapes
:         А2'
%model_1/layer_normalization_1/truediv█
0model_1/layer_normalization_1/mul/ReadVariableOpReadVariableOp9model_1_layer_normalization_1_mul_readvariableop_resource*
_output_shapes	
:А*
dtype022
0model_1/layer_normalization_1/mul/ReadVariableOpх
!model_1/layer_normalization_1/mulMul)model_1/layer_normalization_1/truediv:z:08model_1/layer_normalization_1/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2#
!model_1/layer_normalization_1/mulс
2model_1/layer_normalization_1/add_1/ReadVariableOpReadVariableOp;model_1_layer_normalization_1_add_1_readvariableop_resource*
_output_shapes	
:А*
dtype024
2model_1/layer_normalization_1/add_1/ReadVariableOpщ
#model_1/layer_normalization_1/add_1AddV2%model_1/layer_normalization_1/mul:z:0:model_1/layer_normalization_1/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#model_1/layer_normalization_1/add_1~
model_1/concat_0/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model_1/concat_0/concat/axisЄ
model_1/concat_0/concatConcatV2&model_1/reagent_concat/concat:output:0'model_1/layer_normalization_1/add_1:z:0%model_1/concat_0/concat/axis:output:0*
N*
T0*(
_output_shapes
:         Г82
model_1/concat_0/concat┐
%model_1/dense_1/MatMul/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
Г8А*
dtype02'
%model_1/dense_1/MatMul/ReadVariableOp╛
model_1/dense_1/MatMulMatMul model_1/concat_0/concat:output:0-model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model_1/dense_1/MatMul╜
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02(
&model_1/dense_1/BiasAdd/ReadVariableOp┬
model_1/dense_1/BiasAddBiasAdd model_1/dense_1/MatMul:product:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model_1/dense_1/BiasAddЙ
model_1/dense_1/ReluRelu model_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
model_1/dense_1/Relu╖
4model_1/layer_normalization_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         26
4model_1/layer_normalization_2/Mean/reduction_indicesЎ
"model_1/layer_normalization_2/MeanMean"model_1/dense_1/Relu:activations:0=model_1/layer_normalization_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2$
"model_1/layer_normalization_2/Mean╤
!model_1/layer_normalization_2/subSub"model_1/dense_1/Relu:activations:0+model_1/layer_normalization_2/Mean:output:0*
T0*(
_output_shapes
:         А2#
!model_1/layer_normalization_2/sub░
$model_1/layer_normalization_2/SquareSquare%model_1/layer_normalization_2/sub:z:0*
T0*(
_output_shapes
:         А2&
$model_1/layer_normalization_2/Square╗
6model_1/layer_normalization_2/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         28
6model_1/layer_normalization_2/Mean_1/reduction_indicesВ
$model_1/layer_normalization_2/Mean_1Mean(model_1/layer_normalization_2/Square:y:0?model_1/layer_normalization_2/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2&
$model_1/layer_normalization_2/Mean_1П
#model_1/layer_normalization_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2%
#model_1/layer_normalization_2/add/y▐
!model_1/layer_normalization_2/addAddV2-model_1/layer_normalization_2/Mean_1:output:0,model_1/layer_normalization_2/add/y:output:0*
T0*'
_output_shapes
:         2#
!model_1/layer_normalization_2/addП
#model_1/layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#model_1/layer_normalization_2/ConstУ
%model_1/layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2'
%model_1/layer_normalization_2/Const_1■
3model_1/layer_normalization_2/clip_by_value/MinimumMinimum%model_1/layer_normalization_2/add:z:0.model_1/layer_normalization_2/Const_1:output:0*
T0*'
_output_shapes
:         25
3model_1/layer_normalization_2/clip_by_value/Minimum■
+model_1/layer_normalization_2/clip_by_valueMaximum7model_1/layer_normalization_2/clip_by_value/Minimum:z:0,model_1/layer_normalization_2/Const:output:0*
T0*'
_output_shapes
:         2-
+model_1/layer_normalization_2/clip_by_value│
"model_1/layer_normalization_2/SqrtSqrt/model_1/layer_normalization_2/clip_by_value:z:0*
T0*'
_output_shapes
:         2$
"model_1/layer_normalization_2/Sqrt╒
#model_1/layer_normalization_2/sub_1Sub"model_1/dense_1/Relu:activations:0+model_1/layer_normalization_2/Mean:output:0*
T0*(
_output_shapes
:         А2%
#model_1/layer_normalization_2/sub_1▌
%model_1/layer_normalization_2/truedivRealDiv'model_1/layer_normalization_2/sub_1:z:0&model_1/layer_normalization_2/Sqrt:y:0*
T0*(
_output_shapes
:         А2'
%model_1/layer_normalization_2/truediv█
0model_1/layer_normalization_2/mul/ReadVariableOpReadVariableOp9model_1_layer_normalization_2_mul_readvariableop_resource*
_output_shapes	
:А*
dtype022
0model_1/layer_normalization_2/mul/ReadVariableOpх
!model_1/layer_normalization_2/mulMul)model_1/layer_normalization_2/truediv:z:08model_1/layer_normalization_2/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2#
!model_1/layer_normalization_2/mulс
2model_1/layer_normalization_2/add_1/ReadVariableOpReadVariableOp;model_1_layer_normalization_2_add_1_readvariableop_resource*
_output_shapes	
:А*
dtype024
2model_1/layer_normalization_2/add_1/ReadVariableOpщ
#model_1/layer_normalization_2/add_1AddV2%model_1/layer_normalization_2/mul:z:0:model_1/layer_normalization_2/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#model_1/layer_normalization_2/add_1~
model_1/concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model_1/concat_1/concat/axisЫ
model_1/concat_1/concatConcatV2&model_1/reagent_concat/concat:output:0'model_1/layer_normalization_1/add_1:z:0'model_1/layer_normalization_2/add_1:z:0%model_1/concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:         ГH2
model_1/concat_1/concat┐
%model_1/dense_2/MatMul/ReadVariableOpReadVariableOp.model_1_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ГHА*
dtype02'
%model_1/dense_2/MatMul/ReadVariableOp╛
model_1/dense_2/MatMulMatMul model_1/concat_1/concat:output:0-model_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model_1/dense_2/MatMul╜
&model_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02(
&model_1/dense_2/BiasAdd/ReadVariableOp┬
model_1/dense_2/BiasAddBiasAdd model_1/dense_2/MatMul:product:0.model_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
model_1/dense_2/BiasAddЙ
model_1/dense_2/ReluRelu model_1/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
model_1/dense_2/Relu╖
4model_1/layer_normalization_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         26
4model_1/layer_normalization_3/Mean/reduction_indicesЎ
"model_1/layer_normalization_3/MeanMean"model_1/dense_2/Relu:activations:0=model_1/layer_normalization_3/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2$
"model_1/layer_normalization_3/Mean╤
!model_1/layer_normalization_3/subSub"model_1/dense_2/Relu:activations:0+model_1/layer_normalization_3/Mean:output:0*
T0*(
_output_shapes
:         А2#
!model_1/layer_normalization_3/sub░
$model_1/layer_normalization_3/SquareSquare%model_1/layer_normalization_3/sub:z:0*
T0*(
_output_shapes
:         А2&
$model_1/layer_normalization_3/Square╗
6model_1/layer_normalization_3/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         28
6model_1/layer_normalization_3/Mean_1/reduction_indicesВ
$model_1/layer_normalization_3/Mean_1Mean(model_1/layer_normalization_3/Square:y:0?model_1/layer_normalization_3/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2&
$model_1/layer_normalization_3/Mean_1П
#model_1/layer_normalization_3/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2%
#model_1/layer_normalization_3/add/y▐
!model_1/layer_normalization_3/addAddV2-model_1/layer_normalization_3/Mean_1:output:0,model_1/layer_normalization_3/add/y:output:0*
T0*'
_output_shapes
:         2#
!model_1/layer_normalization_3/addП
#model_1/layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#model_1/layer_normalization_3/ConstУ
%model_1/layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2'
%model_1/layer_normalization_3/Const_1■
3model_1/layer_normalization_3/clip_by_value/MinimumMinimum%model_1/layer_normalization_3/add:z:0.model_1/layer_normalization_3/Const_1:output:0*
T0*'
_output_shapes
:         25
3model_1/layer_normalization_3/clip_by_value/Minimum■
+model_1/layer_normalization_3/clip_by_valueMaximum7model_1/layer_normalization_3/clip_by_value/Minimum:z:0,model_1/layer_normalization_3/Const:output:0*
T0*'
_output_shapes
:         2-
+model_1/layer_normalization_3/clip_by_value│
"model_1/layer_normalization_3/SqrtSqrt/model_1/layer_normalization_3/clip_by_value:z:0*
T0*'
_output_shapes
:         2$
"model_1/layer_normalization_3/Sqrt╒
#model_1/layer_normalization_3/sub_1Sub"model_1/dense_2/Relu:activations:0+model_1/layer_normalization_3/Mean:output:0*
T0*(
_output_shapes
:         А2%
#model_1/layer_normalization_3/sub_1▌
%model_1/layer_normalization_3/truedivRealDiv'model_1/layer_normalization_3/sub_1:z:0&model_1/layer_normalization_3/Sqrt:y:0*
T0*(
_output_shapes
:         А2'
%model_1/layer_normalization_3/truediv█
0model_1/layer_normalization_3/mul/ReadVariableOpReadVariableOp9model_1_layer_normalization_3_mul_readvariableop_resource*
_output_shapes	
:А*
dtype022
0model_1/layer_normalization_3/mul/ReadVariableOpх
!model_1/layer_normalization_3/mulMul)model_1/layer_normalization_3/truediv:z:08model_1/layer_normalization_3/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2#
!model_1/layer_normalization_3/mulс
2model_1/layer_normalization_3/add_1/ReadVariableOpReadVariableOp;model_1_layer_normalization_3_add_1_readvariableop_resource*
_output_shapes	
:А*
dtype024
2model_1/layer_normalization_3/add_1/ReadVariableOpщ
#model_1/layer_normalization_3/add_1AddV2%model_1/layer_normalization_3/mul:z:0:model_1/layer_normalization_3/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2%
#model_1/layer_normalization_3/add_1~
model_1/concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model_1/concat_2/concat/axis─
model_1/concat_2/concatConcatV2&model_1/reagent_concat/concat:output:0'model_1/layer_normalization_1/add_1:z:0'model_1/layer_normalization_2/add_1:z:0'model_1/layer_normalization_3/add_1:z:0%model_1/concat_2/concat/axis:output:0*
N*
T0*(
_output_shapes
:         ГX2
model_1/concat_2/concat▄
/model_1/output_regression/MatMul/ReadVariableOpReadVariableOp8model_1_output_regression_matmul_readvariableop_resource*
_output_shapes
:	ГX*
dtype021
/model_1/output_regression/MatMul/ReadVariableOp█
 model_1/output_regression/MatMulMatMul model_1/concat_2/concat:output:07model_1/output_regression/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2"
 model_1/output_regression/MatMul┌
0model_1/output_regression/BiasAdd/ReadVariableOpReadVariableOp9model_1_output_regression_biasadd_readvariableop_resource*
_output_shapes
:*
dtype022
0model_1/output_regression/BiasAdd/ReadVariableOpщ
!model_1/output_regression/BiasAddBiasAdd*model_1/output_regression/MatMul:product:08model_1/output_regression/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2#
!model_1/output_regression/BiasAddО
IdentityIdentity*model_1/output_regression/BiasAdd:output:0'^model_1/dense_0/BiasAdd/ReadVariableOp&^model_1/dense_0/MatMul/ReadVariableOp'^model_1/dense_1/BiasAdd/ReadVariableOp&^model_1/dense_1/MatMul/ReadVariableOp'^model_1/dense_2/BiasAdd/ReadVariableOp&^model_1/dense_2/MatMul/ReadVariableOp3^model_1/layer_normalization_1/add_1/ReadVariableOp1^model_1/layer_normalization_1/mul/ReadVariableOp3^model_1/layer_normalization_2/add_1/ReadVariableOp1^model_1/layer_normalization_2/mul/ReadVariableOp3^model_1/layer_normalization_3/add_1/ReadVariableOp1^model_1/layer_normalization_3/mul/ReadVariableOp1^model_1/output_regression/BiasAdd/ReadVariableOp0^model_1/output_regression/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:         А :         Г::::::::::::::2P
&model_1/dense_0/BiasAdd/ReadVariableOp&model_1/dense_0/BiasAdd/ReadVariableOp2N
%model_1/dense_0/MatMul/ReadVariableOp%model_1/dense_0/MatMul/ReadVariableOp2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2N
%model_1/dense_1/MatMul/ReadVariableOp%model_1/dense_1/MatMul/ReadVariableOp2P
&model_1/dense_2/BiasAdd/ReadVariableOp&model_1/dense_2/BiasAdd/ReadVariableOp2N
%model_1/dense_2/MatMul/ReadVariableOp%model_1/dense_2/MatMul/ReadVariableOp2h
2model_1/layer_normalization_1/add_1/ReadVariableOp2model_1/layer_normalization_1/add_1/ReadVariableOp2d
0model_1/layer_normalization_1/mul/ReadVariableOp0model_1/layer_normalization_1/mul/ReadVariableOp2h
2model_1/layer_normalization_2/add_1/ReadVariableOp2model_1/layer_normalization_2/add_1/ReadVariableOp2d
0model_1/layer_normalization_2/mul/ReadVariableOp0model_1/layer_normalization_2/mul/ReadVariableOp2h
2model_1/layer_normalization_3/add_1/ReadVariableOp2model_1/layer_normalization_3/add_1/ReadVariableOp2d
0model_1/layer_normalization_3/mul/ReadVariableOp0model_1/layer_normalization_3/mul/ReadVariableOp2d
0model_1/output_regression/BiasAdd/ReadVariableOp0model_1/output_regression/BiasAdd/ReadVariableOp2b
/model_1/output_regression/MatMul/ReadVariableOp/model_1/output_regression/MatMul/ReadVariableOp:R N
(
_output_shapes
:         А 
"
_user_specified_name
Input_fp:WS
(
_output_shapes
:         Г
'
_user_specified_nameInput_reagent
Ї	
┌
A__inference_dense_0_layer_call_and_return_conditional_losses_1571

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Г(А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         Г(::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Г(
 
_user_specified_nameinputs
╛
К
B__inference_concat_2_layer_call_and_return_conditional_losses_1861
inputs_0
inputs_1
inputs_2
inputs_3
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЦ
concatConcatV2inputs_0inputs_1inputs_2inputs_3concat/axis:output:0*
N*
T0*(
_output_shapes
:         ГX2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:         ГX2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:         Г(:         А:         А:         А:R N
(
_output_shapes
:         Г(
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/3
Ї	
┌
A__inference_dense_1_layer_call_and_return_conditional_losses_1672

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Г8А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         Г8::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Г8
 
_user_specified_nameinputs
║
▌
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_844

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identityИвadd_1/ReadVariableOpвmul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean/reduction_indicesА
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:         А2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:         А2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean_1/reduction_indicesК
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:         2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2	
Const_1Ж
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:         2
clip_by_value/MinimumЖ
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:         2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:         2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:         А2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:         А2	
truedivБ
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:А*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
mulЗ
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
add_1К
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▓
y
A__inference_concat_1_layer_call_and_return_conditional_losses_877

inputs
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisК
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*(
_output_shapes
:         ГH2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:         ГH2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:         Г(:         А:         А:P L
(
_output_shapes
:         Г(
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ў
Й
4__inference_layer_normalization_2_layer_call_fn_1740

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_8192
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ў
Й
4__inference_layer_normalization_3_layer_call_fn_1852

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9642
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┘
{
&__inference_dense_0_layer_call_fn_1580

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_0_layer_call_and_return_conditional_losses_6602
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         Г(::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         Г(
 
_user_specified_nameinputs
ў7
я
A__inference_model_1_layer_call_and_return_conditional_losses_1036
input_fp
input_reagent
dense_0_671
dense_0_673
layer_normalization_1_746
layer_normalization_1_748
dense_1_789
dense_1_791
layer_normalization_2_864
layer_normalization_2_866
dense_2_909
dense_2_911
layer_normalization_3_984
layer_normalization_3_986
output_regression_1030
output_regression_1032
identityИвdense_0/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallв-layer_normalization_1/StatefulPartitionedCallв-layer_normalization_2/StatefulPartitionedCallв-layer_normalization_3/StatefulPartitionedCallв)output_regression/StatefulPartitionedCallЎ
reagent_concat/PartitionedCallPartitionedCallinput_fpinput_reagent*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Г(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_reagent_concat_layer_call_and_return_conditional_losses_6402 
reagent_concat/PartitionedCallи
dense_0/StatefulPartitionedCallStatefulPartitionedCall'reagent_concat/PartitionedCall:output:0dense_0_671dense_0_673*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_0_layer_call_and_return_conditional_losses_6602!
dense_0/StatefulPartitionedCallя
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dense_0/StatefulPartitionedCall:output:0layer_normalization_1_746layer_normalization_1_748*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7012/
-layer_normalization_1/StatefulPartitionedCallм
concat_0/PartitionedCallPartitionedCall'reagent_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Г8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_0_layer_call_and_return_conditional_losses_7582
concat_0/PartitionedCallв
dense_1/StatefulPartitionedCallStatefulPartitionedCall!concat_0/PartitionedCall:output:0dense_1_789dense_1_791*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_7782!
dense_1/StatefulPartitionedCallя
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0layer_normalization_2_864layer_normalization_2_866*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_8192/
-layer_normalization_2/StatefulPartitionedCallх
concat_1/PartitionedCallPartitionedCall'reagent_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ГH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_1_layer_call_and_return_conditional_losses_8772
concat_1/PartitionedCallв
dense_2/StatefulPartitionedCallStatefulPartitionedCall!concat_1/PartitionedCall:output:0dense_2_909dense_2_911*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_8982!
dense_2/StatefulPartitionedCallя
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0layer_normalization_3_984layer_normalization_3_986*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9392/
-layer_normalization_3/StatefulPartitionedCallЮ
concat_2/PartitionedCallPartitionedCall'reagent_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ГX* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_2_layer_call_and_return_conditional_losses_9982
concat_2/PartitionedCall╓
)output_regression/StatefulPartitionedCallStatefulPartitionedCall!concat_2/PartitionedCall:output:0output_regression_1030output_regression_1032*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_output_regression_layer_call_and_return_conditional_losses_10192+
)output_regression/StatefulPartitionedCallи
IdentityIdentity2output_regression/StatefulPartitionedCall:output:0 ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall*^output_regression/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:         А :         Г::::::::::::::2B
dense_0/StatefulPartitionedCalldense_0/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2V
)output_regression/StatefulPartitionedCall)output_regression/StatefulPartitionedCall:R N
(
_output_shapes
:         А 
"
_user_specified_name
Input_fp:WS
(
_output_shapes
:         Г
'
_user_specified_nameInput_reagent
є	
┘
@__inference_dense_2_layer_call_and_return_conditional_losses_898

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ГHА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ГH::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ГH
 
_user_specified_nameinputs
Ъ
o
'__inference_concat_2_layer_call_fn_1869
inputs_0
inputs_1
inputs_2
inputs_3
identityу
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ГX* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_2_layer_call_and_return_conditional_losses_9982
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ГX2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:         Г(:         А:         А:         А:R N
(
_output_shapes
:         Г(
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/3
°7
Ї
A__inference_model_1_layer_call_and_return_conditional_losses_1206

inputs
inputs_1
dense_0_1167
dense_0_1169
layer_normalization_1_1172
layer_normalization_1_1174
dense_1_1178
dense_1_1180
layer_normalization_2_1183
layer_normalization_2_1185
dense_2_1189
dense_2_1191
layer_normalization_3_1194
layer_normalization_3_1196
output_regression_1200
output_regression_1202
identityИвdense_0/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallв-layer_normalization_1/StatefulPartitionedCallв-layer_normalization_2/StatefulPartitionedCallв-layer_normalization_3/StatefulPartitionedCallв)output_regression/StatefulPartitionedCallя
reagent_concat/PartitionedCallPartitionedCallinputsinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Г(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_reagent_concat_layer_call_and_return_conditional_losses_6402 
reagent_concat/PartitionedCallк
dense_0/StatefulPartitionedCallStatefulPartitionedCall'reagent_concat/PartitionedCall:output:0dense_0_1167dense_0_1169*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_0_layer_call_and_return_conditional_losses_6602!
dense_0/StatefulPartitionedCallё
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dense_0/StatefulPartitionedCall:output:0layer_normalization_1_1172layer_normalization_1_1174*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7262/
-layer_normalization_1/StatefulPartitionedCallм
concat_0/PartitionedCallPartitionedCall'reagent_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Г8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_0_layer_call_and_return_conditional_losses_7582
concat_0/PartitionedCallд
dense_1/StatefulPartitionedCallStatefulPartitionedCall!concat_0/PartitionedCall:output:0dense_1_1178dense_1_1180*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_7782!
dense_1/StatefulPartitionedCallё
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0layer_normalization_2_1183layer_normalization_2_1185*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_8442/
-layer_normalization_2/StatefulPartitionedCallх
concat_1/PartitionedCallPartitionedCall'reagent_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ГH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_1_layer_call_and_return_conditional_losses_8772
concat_1/PartitionedCallд
dense_2/StatefulPartitionedCallStatefulPartitionedCall!concat_1/PartitionedCall:output:0dense_2_1189dense_2_1191*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_8982!
dense_2/StatefulPartitionedCallё
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0layer_normalization_3_1194layer_normalization_3_1196*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9642/
-layer_normalization_3/StatefulPartitionedCallЮ
concat_2/PartitionedCallPartitionedCall'reagent_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ГX* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_2_layer_call_and_return_conditional_losses_9982
concat_2/PartitionedCall╓
)output_regression/StatefulPartitionedCallStatefulPartitionedCall!concat_2/PartitionedCall:output:0output_regression_1200output_regression_1202*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_output_regression_layer_call_and_return_conditional_losses_10192+
)output_regression/StatefulPartitionedCallи
IdentityIdentity2output_regression/StatefulPartitionedCall:output:0 ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall*^output_regression/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:         А :         Г::::::::::::::2B
dense_0/StatefulPartitionedCalldense_0/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2V
)output_regression/StatefulPartitionedCall)output_regression/StatefulPartitionedCall:P L
(
_output_shapes
:         А 
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Г
 
_user_specified_nameinputs
║
▌
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_819

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identityИвadd_1/ReadVariableOpвmul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean/reduction_indicesА
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:         А2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:         А2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean_1/reduction_indicesК
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:         2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2	
Const_1Ж
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:         2
clip_by_value/MinimumЖ
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:         2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:         2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:         А2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:         А2	
truedivБ
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:А*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
mulЗ
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
add_1К
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ў
Й
4__inference_layer_normalization_2_layer_call_fn_1749

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_8442
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╗
▐
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_1809

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identityИвadd_1/ReadVariableOpвmul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean/reduction_indicesА
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:         А2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:         А2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean_1/reduction_indicesК
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:         2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2	
Const_1Ж
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:         2
clip_by_value/MinimumЖ
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:         2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:         2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:         А2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:         А2	
truedivБ
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:А*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
mulЗ
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
add_1К
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ў
Й
4__inference_layer_normalization_3_layer_call_fn_1843

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9392
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
э
Е
0__inference_output_regression_layer_call_fn_1888

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_output_regression_layer_call_and_return_conditional_losses_10192
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ГX::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ГX
 
_user_specified_nameinputs
Ш
S
'__inference_concat_0_layer_call_fn_1661
inputs_0
inputs_1
identity═
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Г8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_0_layer_call_and_return_conditional_losses_7582
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         Г82

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         Г(:         А:R N
(
_output_shapes
:         Г(
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/1
∙П
╪

A__inference_model_1_layer_call_and_return_conditional_losses_1376
inputs_0
inputs_1*
&dense_0_matmul_readvariableop_resource+
'dense_0_biasadd_readvariableop_resource5
1layer_normalization_1_mul_readvariableop_resource7
3layer_normalization_1_add_1_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource5
1layer_normalization_2_mul_readvariableop_resource7
3layer_normalization_2_add_1_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource5
1layer_normalization_3_mul_readvariableop_resource7
3layer_normalization_3_add_1_readvariableop_resource4
0output_regression_matmul_readvariableop_resource5
1output_regression_biasadd_readvariableop_resource
identityИвdense_0/BiasAdd/ReadVariableOpвdense_0/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpв*layer_normalization_1/add_1/ReadVariableOpв(layer_normalization_1/mul/ReadVariableOpв*layer_normalization_2/add_1/ReadVariableOpв(layer_normalization_2/mul/ReadVariableOpв*layer_normalization_3/add_1/ReadVariableOpв(layer_normalization_3/mul/ReadVariableOpв(output_regression/BiasAdd/ReadVariableOpв'output_regression/MatMul/ReadVariableOpz
reagent_concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
reagent_concat/concat/axisп
reagent_concat/concatConcatV2inputs_0inputs_1#reagent_concat/concat/axis:output:0*
N*
T0*(
_output_shapes
:         Г(2
reagent_concat/concatз
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource* 
_output_shapes
:
Г(А*
dtype02
dense_0/MatMul/ReadVariableOpд
dense_0/MatMulMatMulreagent_concat/concat:output:0%dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_0/MatMulе
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_0/BiasAdd/ReadVariableOpв
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_0/BiasAddq
dense_0/ReluReludense_0/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_0/Reluз
,layer_normalization_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2.
,layer_normalization_1/Mean/reduction_indices╓
layer_normalization_1/MeanMeandense_0/Relu:activations:05layer_normalization_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
layer_normalization_1/Mean▒
layer_normalization_1/subSubdense_0/Relu:activations:0#layer_normalization_1/Mean:output:0*
T0*(
_output_shapes
:         А2
layer_normalization_1/subШ
layer_normalization_1/SquareSquarelayer_normalization_1/sub:z:0*
T0*(
_output_shapes
:         А2
layer_normalization_1/Squareл
.layer_normalization_1/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         20
.layer_normalization_1/Mean_1/reduction_indicesт
layer_normalization_1/Mean_1Mean layer_normalization_1/Square:y:07layer_normalization_1/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
layer_normalization_1/Mean_1
layer_normalization_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
layer_normalization_1/add/y╛
layer_normalization_1/addAddV2%layer_normalization_1/Mean_1:output:0$layer_normalization_1/add/y:output:0*
T0*'
_output_shapes
:         2
layer_normalization_1/add
layer_normalization_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_normalization_1/ConstГ
layer_normalization_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2
layer_normalization_1/Const_1▐
+layer_normalization_1/clip_by_value/MinimumMinimumlayer_normalization_1/add:z:0&layer_normalization_1/Const_1:output:0*
T0*'
_output_shapes
:         2-
+layer_normalization_1/clip_by_value/Minimum▐
#layer_normalization_1/clip_by_valueMaximum/layer_normalization_1/clip_by_value/Minimum:z:0$layer_normalization_1/Const:output:0*
T0*'
_output_shapes
:         2%
#layer_normalization_1/clip_by_valueЫ
layer_normalization_1/SqrtSqrt'layer_normalization_1/clip_by_value:z:0*
T0*'
_output_shapes
:         2
layer_normalization_1/Sqrt╡
layer_normalization_1/sub_1Subdense_0/Relu:activations:0#layer_normalization_1/Mean:output:0*
T0*(
_output_shapes
:         А2
layer_normalization_1/sub_1╜
layer_normalization_1/truedivRealDivlayer_normalization_1/sub_1:z:0layer_normalization_1/Sqrt:y:0*
T0*(
_output_shapes
:         А2
layer_normalization_1/truediv├
(layer_normalization_1/mul/ReadVariableOpReadVariableOp1layer_normalization_1_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(layer_normalization_1/mul/ReadVariableOp┼
layer_normalization_1/mulMul!layer_normalization_1/truediv:z:00layer_normalization_1/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
layer_normalization_1/mul╔
*layer_normalization_1/add_1/ReadVariableOpReadVariableOp3layer_normalization_1_add_1_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*layer_normalization_1/add_1/ReadVariableOp╔
layer_normalization_1/add_1AddV2layer_normalization_1/mul:z:02layer_normalization_1/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
layer_normalization_1/add_1n
concat_0/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_0/concat/axis╩
concat_0/concatConcatV2reagent_concat/concat:output:0layer_normalization_1/add_1:z:0concat_0/concat/axis:output:0*
N*
T0*(
_output_shapes
:         Г82
concat_0/concatз
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
Г8А*
dtype02
dense_1/MatMul/ReadVariableOpЮ
dense_1/MatMulMatMulconcat_0/concat:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_1/MatMulе
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_1/BiasAdd/ReadVariableOpв
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_1/Reluз
,layer_normalization_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2.
,layer_normalization_2/Mean/reduction_indices╓
layer_normalization_2/MeanMeandense_1/Relu:activations:05layer_normalization_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
layer_normalization_2/Mean▒
layer_normalization_2/subSubdense_1/Relu:activations:0#layer_normalization_2/Mean:output:0*
T0*(
_output_shapes
:         А2
layer_normalization_2/subШ
layer_normalization_2/SquareSquarelayer_normalization_2/sub:z:0*
T0*(
_output_shapes
:         А2
layer_normalization_2/Squareл
.layer_normalization_2/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         20
.layer_normalization_2/Mean_1/reduction_indicesт
layer_normalization_2/Mean_1Mean layer_normalization_2/Square:y:07layer_normalization_2/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
layer_normalization_2/Mean_1
layer_normalization_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
layer_normalization_2/add/y╛
layer_normalization_2/addAddV2%layer_normalization_2/Mean_1:output:0$layer_normalization_2/add/y:output:0*
T0*'
_output_shapes
:         2
layer_normalization_2/add
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_normalization_2/ConstГ
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2
layer_normalization_2/Const_1▐
+layer_normalization_2/clip_by_value/MinimumMinimumlayer_normalization_2/add:z:0&layer_normalization_2/Const_1:output:0*
T0*'
_output_shapes
:         2-
+layer_normalization_2/clip_by_value/Minimum▐
#layer_normalization_2/clip_by_valueMaximum/layer_normalization_2/clip_by_value/Minimum:z:0$layer_normalization_2/Const:output:0*
T0*'
_output_shapes
:         2%
#layer_normalization_2/clip_by_valueЫ
layer_normalization_2/SqrtSqrt'layer_normalization_2/clip_by_value:z:0*
T0*'
_output_shapes
:         2
layer_normalization_2/Sqrt╡
layer_normalization_2/sub_1Subdense_1/Relu:activations:0#layer_normalization_2/Mean:output:0*
T0*(
_output_shapes
:         А2
layer_normalization_2/sub_1╜
layer_normalization_2/truedivRealDivlayer_normalization_2/sub_1:z:0layer_normalization_2/Sqrt:y:0*
T0*(
_output_shapes
:         А2
layer_normalization_2/truediv├
(layer_normalization_2/mul/ReadVariableOpReadVariableOp1layer_normalization_2_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(layer_normalization_2/mul/ReadVariableOp┼
layer_normalization_2/mulMul!layer_normalization_2/truediv:z:00layer_normalization_2/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
layer_normalization_2/mul╔
*layer_normalization_2/add_1/ReadVariableOpReadVariableOp3layer_normalization_2_add_1_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*layer_normalization_2/add_1/ReadVariableOp╔
layer_normalization_2/add_1AddV2layer_normalization_2/mul:z:02layer_normalization_2/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
layer_normalization_2/add_1n
concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/concat/axisы
concat_1/concatConcatV2reagent_concat/concat:output:0layer_normalization_1/add_1:z:0layer_normalization_2/add_1:z:0concat_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:         ГH2
concat_1/concatз
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
ГHА*
dtype02
dense_2/MatMul/ReadVariableOpЮ
dense_2/MatMulMatMulconcat_1/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_2/MatMulе
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_2/BiasAdd/ReadVariableOpв
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_2/Reluз
,layer_normalization_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2.
,layer_normalization_3/Mean/reduction_indices╓
layer_normalization_3/MeanMeandense_2/Relu:activations:05layer_normalization_3/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
layer_normalization_3/Mean▒
layer_normalization_3/subSubdense_2/Relu:activations:0#layer_normalization_3/Mean:output:0*
T0*(
_output_shapes
:         А2
layer_normalization_3/subШ
layer_normalization_3/SquareSquarelayer_normalization_3/sub:z:0*
T0*(
_output_shapes
:         А2
layer_normalization_3/Squareл
.layer_normalization_3/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         20
.layer_normalization_3/Mean_1/reduction_indicesт
layer_normalization_3/Mean_1Mean layer_normalization_3/Square:y:07layer_normalization_3/Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
layer_normalization_3/Mean_1
layer_normalization_3/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
layer_normalization_3/add/y╛
layer_normalization_3/addAddV2%layer_normalization_3/Mean_1:output:0$layer_normalization_3/add/y:output:0*
T0*'
_output_shapes
:         2
layer_normalization_3/add
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
layer_normalization_3/ConstГ
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2
layer_normalization_3/Const_1▐
+layer_normalization_3/clip_by_value/MinimumMinimumlayer_normalization_3/add:z:0&layer_normalization_3/Const_1:output:0*
T0*'
_output_shapes
:         2-
+layer_normalization_3/clip_by_value/Minimum▐
#layer_normalization_3/clip_by_valueMaximum/layer_normalization_3/clip_by_value/Minimum:z:0$layer_normalization_3/Const:output:0*
T0*'
_output_shapes
:         2%
#layer_normalization_3/clip_by_valueЫ
layer_normalization_3/SqrtSqrt'layer_normalization_3/clip_by_value:z:0*
T0*'
_output_shapes
:         2
layer_normalization_3/Sqrt╡
layer_normalization_3/sub_1Subdense_2/Relu:activations:0#layer_normalization_3/Mean:output:0*
T0*(
_output_shapes
:         А2
layer_normalization_3/sub_1╜
layer_normalization_3/truedivRealDivlayer_normalization_3/sub_1:z:0layer_normalization_3/Sqrt:y:0*
T0*(
_output_shapes
:         А2
layer_normalization_3/truediv├
(layer_normalization_3/mul/ReadVariableOpReadVariableOp1layer_normalization_3_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(layer_normalization_3/mul/ReadVariableOp┼
layer_normalization_3/mulMul!layer_normalization_3/truediv:z:00layer_normalization_3/mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
layer_normalization_3/mul╔
*layer_normalization_3/add_1/ReadVariableOpReadVariableOp3layer_normalization_3_add_1_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*layer_normalization_3/add_1/ReadVariableOp╔
layer_normalization_3/add_1AddV2layer_normalization_3/mul:z:02layer_normalization_3/add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
layer_normalization_3/add_1n
concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_2/concat/axisМ
concat_2/concatConcatV2reagent_concat/concat:output:0layer_normalization_1/add_1:z:0layer_normalization_2/add_1:z:0layer_normalization_3/add_1:z:0concat_2/concat/axis:output:0*
N*
T0*(
_output_shapes
:         ГX2
concat_2/concat─
'output_regression/MatMul/ReadVariableOpReadVariableOp0output_regression_matmul_readvariableop_resource*
_output_shapes
:	ГX*
dtype02)
'output_regression/MatMul/ReadVariableOp╗
output_regression/MatMulMatMulconcat_2/concat:output:0/output_regression/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
output_regression/MatMul┬
(output_regression/BiasAdd/ReadVariableOpReadVariableOp1output_regression_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(output_regression/BiasAdd/ReadVariableOp╔
output_regression/BiasAddBiasAdd"output_regression/MatMul:product:00output_regression/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
output_regression/BiasAddЦ
IdentityIdentity"output_regression/BiasAdd:output:0^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp+^layer_normalization_1/add_1/ReadVariableOp)^layer_normalization_1/mul/ReadVariableOp+^layer_normalization_2/add_1/ReadVariableOp)^layer_normalization_2/mul/ReadVariableOp+^layer_normalization_3/add_1/ReadVariableOp)^layer_normalization_3/mul/ReadVariableOp)^output_regression/BiasAdd/ReadVariableOp(^output_regression/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:         А :         Г::::::::::::::2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2X
*layer_normalization_1/add_1/ReadVariableOp*layer_normalization_1/add_1/ReadVariableOp2T
(layer_normalization_1/mul/ReadVariableOp(layer_normalization_1/mul/ReadVariableOp2X
*layer_normalization_2/add_1/ReadVariableOp*layer_normalization_2/add_1/ReadVariableOp2T
(layer_normalization_2/mul/ReadVariableOp(layer_normalization_2/mul/ReadVariableOp2X
*layer_normalization_3/add_1/ReadVariableOp*layer_normalization_3/add_1/ReadVariableOp2T
(layer_normalization_3/mul/ReadVariableOp(layer_normalization_3/mul/ReadVariableOp2T
(output_regression/BiasAdd/ReadVariableOp(output_regression/BiasAdd/ReadVariableOp2R
'output_regression/MatMul/ReadVariableOp'output_regression/MatMul/ReadVariableOp:R N
(
_output_shapes
:         А 
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         Г
"
_user_specified_name
inputs/1
°7
Ї
A__inference_model_1_layer_call_and_return_conditional_losses_1128

inputs
inputs_1
dense_0_1089
dense_0_1091
layer_normalization_1_1094
layer_normalization_1_1096
dense_1_1100
dense_1_1102
layer_normalization_2_1105
layer_normalization_2_1107
dense_2_1111
dense_2_1113
layer_normalization_3_1116
layer_normalization_3_1118
output_regression_1122
output_regression_1124
identityИвdense_0/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallв-layer_normalization_1/StatefulPartitionedCallв-layer_normalization_2/StatefulPartitionedCallв-layer_normalization_3/StatefulPartitionedCallв)output_regression/StatefulPartitionedCallя
reagent_concat/PartitionedCallPartitionedCallinputsinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Г(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_reagent_concat_layer_call_and_return_conditional_losses_6402 
reagent_concat/PartitionedCallк
dense_0/StatefulPartitionedCallStatefulPartitionedCall'reagent_concat/PartitionedCall:output:0dense_0_1089dense_0_1091*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_0_layer_call_and_return_conditional_losses_6602!
dense_0/StatefulPartitionedCallё
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dense_0/StatefulPartitionedCall:output:0layer_normalization_1_1094layer_normalization_1_1096*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7012/
-layer_normalization_1/StatefulPartitionedCallм
concat_0/PartitionedCallPartitionedCall'reagent_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Г8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_0_layer_call_and_return_conditional_losses_7582
concat_0/PartitionedCallд
dense_1/StatefulPartitionedCallStatefulPartitionedCall!concat_0/PartitionedCall:output:0dense_1_1100dense_1_1102*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_7782!
dense_1/StatefulPartitionedCallё
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0layer_normalization_2_1105layer_normalization_2_1107*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_2_layer_call_and_return_conditional_losses_8192/
-layer_normalization_2/StatefulPartitionedCallх
concat_1/PartitionedCallPartitionedCall'reagent_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ГH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_1_layer_call_and_return_conditional_losses_8772
concat_1/PartitionedCallд
dense_2/StatefulPartitionedCallStatefulPartitionedCall!concat_1/PartitionedCall:output:0dense_2_1111dense_2_1113*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_2_layer_call_and_return_conditional_losses_8982!
dense_2/StatefulPartitionedCallё
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0layer_normalization_3_1116layer_normalization_3_1118*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9392/
-layer_normalization_3/StatefulPartitionedCallЮ
concat_2/PartitionedCallPartitionedCall'reagent_concat/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:06layer_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ГX* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_concat_2_layer_call_and_return_conditional_losses_9982
concat_2/PartitionedCall╓
)output_regression/StatefulPartitionedCallStatefulPartitionedCall!concat_2/PartitionedCall:output:0output_regression_1122output_regression_1124*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_output_regression_layer_call_and_return_conditional_losses_10192+
)output_regression/StatefulPartitionedCallи
IdentityIdentity2output_regression/StatefulPartitionedCall:output:0 ^dense_0/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall*^output_regression/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:         А :         Г::::::::::::::2B
dense_0/StatefulPartitionedCalldense_0/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2V
)output_regression/StatefulPartitionedCall)output_regression/StatefulPartitionedCall:P L
(
_output_shapes
:         А 
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Г
 
_user_specified_nameinputs
▒
З
A__inference_concat_2_layer_call_and_return_conditional_losses_998

inputs
inputs_1
inputs_2
inputs_3
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisФ
concatConcatV2inputsinputs_1inputs_2inputs_3concat/axis:output:0*
N*
T0*(
_output_shapes
:         ГX2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:         ГX2

Identity"
identityIdentity:output:0*c
_input_shapesR
P:         Г(:         А:         А:         А:P L
(
_output_shapes
:         Г(
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinputs
є	
┘
@__inference_dense_0_layer_call_and_return_conditional_losses_660

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Г(А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         Г(::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Г(
 
_user_specified_nameinputs
ц

┬
&__inference_model_1_layer_call_fn_1513
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_11282
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:         А :         Г::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:         А 
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         Г
"
_user_specified_name
inputs/1
ї

╟
&__inference_model_1_layer_call_fn_1237
input_fp
input_reagent
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinput_fpinput_reagentunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_12062
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:         А :         Г::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:         А 
"
_user_specified_name
Input_fp:WS
(
_output_shapes
:         Г
'
_user_specified_nameInput_reagent
║
▌
N__inference_layer_normalization_1_layer_call_and_return_conditional_losses_701

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identityИвadd_1/ReadVariableOpвmul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean/reduction_indicesА
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:         А2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:         А2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean_1/reduction_indicesК
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:         2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2	
Const_1Ж
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:         2
clip_by_value/MinimumЖ
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:         2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:         2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:         А2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:         А2	
truedivБ
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:А*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
mulЗ
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
add_1К
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
є	
┘
@__inference_dense_1_layer_call_and_return_conditional_losses_778

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Г8А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         Г8::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Г8
 
_user_specified_nameinputs
╜
n
B__inference_concat_0_layer_call_and_return_conditional_losses_1655
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisВ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:         Г82
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:         Г82

Identity"
identityIdentity:output:0*;
_input_shapes*
(:         Г(:         А:R N
(
_output_shapes
:         Г(
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs/1
ц

┬
&__inference_model_1_layer_call_fn_1547
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИвStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_12062
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:         А :         Г::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:         А 
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:         Г
"
_user_specified_name
inputs/1
╗
▐
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1731

inputs
mul_readvariableop_resource!
add_1_readvariableop_resource
identityИвadd_1/ReadVariableOpвmul/ReadVariableOp{
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean/reduction_indicesА
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean[
subSubinputsMean:output:0*
T0*(
_output_shapes
:         А2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:         А2
Square
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
         2
Mean_1/reduction_indicesК
Mean_1Mean
Square:y:0!Mean_1/reduction_indices:output:0*
T0*'
_output_shapes
:         *
	keep_dims(2
Mean_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *▄$4(2
add/yf
addAddV2Mean_1:output:0add/y:output:0*
T0*'
_output_shapes
:         2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  А2	
Const_1Ж
clip_by_value/MinimumMinimumadd:z:0Const_1:output:0*
T0*'
_output_shapes
:         2
clip_by_value/MinimumЖ
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*'
_output_shapes
:         2
clip_by_valueY
SqrtSqrtclip_by_value:z:0*
T0*'
_output_shapes
:         2
Sqrt_
sub_1SubinputsMean:output:0*
T0*(
_output_shapes
:         А2
sub_1e
truedivRealDiv	sub_1:z:0Sqrt:y:0*
T0*(
_output_shapes
:         А2	
truedivБ
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:А*
dtype02
mul/ReadVariableOpm
mulMultruediv:z:0mul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
mulЗ
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:А*
dtype02
add_1/ReadVariableOpq
add_1AddV2mul:z:0add_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
add_1К
IdentityIdentity	add_1:z:0^add_1/ReadVariableOp^mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*/
_input_shapes
:         А::2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Б
serving_defaultэ
>
Input_fp2
serving_default_Input_fp:0         А 
H
Input_reagent7
serving_default_Input_reagent:0         ГE
output_regression0
StatefulPartitionedCall:0         tensorflow/serving/predict:╚є
ь]
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
┬__call__
├_default_save_signature
+─&call_and_return_all_conditional_losses"╝Y
_tf_keras_networkаY{"class_name": "Functional", "name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4096]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_fp"}, "name": "Input_fp", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1027]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_reagent"}, "name": "Input_reagent", "inbound_nodes": []}, {"class_name": "Concatenate", "config": {"name": "reagent_concat", "trainable": true, "dtype": "float32", "axis": -1}, "name": "reagent_concat", "inbound_nodes": [[["Input_fp", 0, 0, {}], ["Input_reagent", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_0", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_0", "inbound_nodes": [[["reagent_concat", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_1", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "name": "layer_normalization_1", "inbound_nodes": [[["dense_0", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_0", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_0", "inbound_nodes": [[["reagent_concat", 0, 0, {}], ["layer_normalization_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["concat_0", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_2", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "name": "layer_normalization_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_1", "inbound_nodes": [[["reagent_concat", 0, 0, {}], ["layer_normalization_1", 0, 0, {}], ["layer_normalization_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["concat_1", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_3", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "name": "layer_normalization_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_2", "inbound_nodes": [[["reagent_concat", 0, 0, {}], ["layer_normalization_1", 0, 0, {}], ["layer_normalization_2", 0, 0, {}], ["layer_normalization_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_regression", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_regression", "inbound_nodes": [[["concat_2", 0, 0, {}]]]}], "input_layers": [["Input_fp", 0, 0], ["Input_reagent", 0, 0]], "output_layers": [["output_regression", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 4096]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1027]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 4096]}, {"class_name": "TensorShape", "items": [null, 1027]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4096]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_fp"}, "name": "Input_fp", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1027]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_reagent"}, "name": "Input_reagent", "inbound_nodes": []}, {"class_name": "Concatenate", "config": {"name": "reagent_concat", "trainable": true, "dtype": "float32", "axis": -1}, "name": "reagent_concat", "inbound_nodes": [[["Input_fp", 0, 0, {}], ["Input_reagent", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_0", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_0", "inbound_nodes": [[["reagent_concat", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_1", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "name": "layer_normalization_1", "inbound_nodes": [[["dense_0", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_0", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_0", "inbound_nodes": [[["reagent_concat", 0, 0, {}], ["layer_normalization_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["concat_0", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_2", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "name": "layer_normalization_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_1", "inbound_nodes": [[["reagent_concat", 0, 0, {}], ["layer_normalization_1", 0, 0, {}], ["layer_normalization_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["concat_1", 0, 0, {}]]]}, {"class_name": "LayerNormalization", "config": {"name": "layer_normalization_3", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "name": "layer_normalization_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concat_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concat_2", "inbound_nodes": [[["reagent_concat", 0, 0, {}], ["layer_normalization_1", 0, 0, {}], ["layer_normalization_2", 0, 0, {}], ["layer_normalization_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "output_regression", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "output_regression", "inbound_nodes": [[["concat_2", 0, 0, {}]]]}], "input_layers": [["Input_fp", 0, 0], ["Input_reagent", 0, 0]], "output_layers": [["output_regression", 0, 0]]}}}
ё"ю
_tf_keras_input_layer╬{"class_name": "InputLayer", "name": "Input_fp", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 4096]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4096]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_fp"}}
√"°
_tf_keras_input_layer╪{"class_name": "InputLayer", "name": "Input_reagent", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1027]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1027]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_reagent"}}
╒
	variables
regularization_losses
trainable_variables
	keras_api
┼__call__
+╞&call_and_return_all_conditional_losses"─
_tf_keras_layerк{"class_name": "Concatenate", "name": "reagent_concat", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reagent_concat", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 4096]}, {"class_name": "TensorShape", "items": [null, 1027]}]}
╢

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses"П
_tf_keras_layerї{"class_name": "Dense", "name": "dense_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_0", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5123}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5123]}}
┘
	gamma
beta
 	variables
!regularization_losses
"trainable_variables
#	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses"│
_tf_keras_layerЩ{"class_name": "LayerNormalization", "name": "layer_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_1", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2048]}}
╔
$	variables
%regularization_losses
&trainable_variables
'	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses"╕
_tf_keras_layerЮ{"class_name": "Concatenate", "name": "concat_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concat_0", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 5123]}, {"class_name": "TensorShape", "items": [null, 2048]}]}
╢

(kernel
)bias
*	variables
+regularization_losses
,trainable_variables
-	keras_api
═__call__
+╬&call_and_return_all_conditional_losses"П
_tf_keras_layerї{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 7171}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7171]}}
┘
	.gamma
/beta
0	variables
1regularization_losses
2trainable_variables
3	keras_api
╧__call__
+╨&call_and_return_all_conditional_losses"│
_tf_keras_layerЩ{"class_name": "LayerNormalization", "name": "layer_normalization_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_2", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2048]}}
 
4	variables
5regularization_losses
6trainable_variables
7	keras_api
╤__call__
+╥&call_and_return_all_conditional_losses"ю
_tf_keras_layer╘{"class_name": "Concatenate", "name": "concat_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concat_1", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 5123]}, {"class_name": "TensorShape", "items": [null, 2048]}, {"class_name": "TensorShape", "items": [null, 2048]}]}
╢

8kernel
9bias
:	variables
;regularization_losses
<trainable_variables
=	keras_api
╙__call__
+╘&call_and_return_all_conditional_losses"П
_tf_keras_layerї{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 9219}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9219]}}
┘
	>gamma
?beta
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
╒__call__
+╓&call_and_return_all_conditional_losses"│
_tf_keras_layerЩ{"class_name": "LayerNormalization", "name": "layer_normalization_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_3", "trainable": true, "dtype": "float32", "center": true, "scale": true, "epsilon": 9.999999999999998e-15, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_regularizer": null, "beta_regularizer": null, "gamma_constraint": null, "beta_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2048]}}
╡
D	variables
Eregularization_losses
Ftrainable_variables
G	keras_api
╫__call__
+╪&call_and_return_all_conditional_losses"д
_tf_keras_layerК{"class_name": "Concatenate", "name": "concat_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concat_2", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 5123]}, {"class_name": "TensorShape", "items": [null, 2048]}, {"class_name": "TensorShape", "items": [null, 2048]}, {"class_name": "TensorShape", "items": [null, 2048]}]}
╦

Hkernel
Ibias
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
┘__call__
+┌&call_and_return_all_conditional_losses"д
_tf_keras_layerК{"class_name": "Dense", "name": "output_regression", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output_regression", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 1.0, "mode": "fan_avg", "distribution": "uniform", "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 11267}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11267]}}
ы
Niter

Obeta_1

Pbeta_2
	Qdecay
Rlearning_ratemжmзmиmй(mк)mл.mм/mн8mо9mп>m░?m▒Hm▓Im│v┤v╡v╢v╖(v╕)v╣.v║/v╗8v╝9v╜>v╛?v┐Hv└Iv┴"
	optimizer
Ж
0
1
2
3
(4
)5
.6
/7
88
99
>10
?11
H12
I13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ж
0
1
2
3
(4
)5
.6
/7
88
99
>10
?11
H12
I13"
trackable_list_wrapper
╬
Slayer_metrics

Tlayers
Umetrics
	variables
regularization_losses
Vlayer_regularization_losses
trainable_variables
Wnon_trainable_variables
┬__call__
├_default_save_signature
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
-
█serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Xlayer_metrics

Ylayers
Zmetrics
	variables
regularization_losses
[layer_regularization_losses
trainable_variables
\non_trainable_variables
┼__call__
+╞&call_and_return_all_conditional_losses
'╞"call_and_return_conditional_losses"
_generic_user_object
": 
Г(А2dense_0/kernel
:А2dense_0/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
]layer_metrics

^layers
_metrics
	variables
regularization_losses
`layer_regularization_losses
trainable_variables
anon_trainable_variables
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
*:(А2layer_normalization_1/gamma
):'А2layer_normalization_1/beta
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
blayer_metrics

clayers
dmetrics
 	variables
!regularization_losses
elayer_regularization_losses
"trainable_variables
fnon_trainable_variables
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
glayer_metrics

hlayers
imetrics
$	variables
%regularization_losses
jlayer_regularization_losses
&trainable_variables
knon_trainable_variables
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
": 
Г8А2dense_1/kernel
:А2dense_1/bias
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
░
llayer_metrics

mlayers
nmetrics
*	variables
+regularization_losses
olayer_regularization_losses
,trainable_variables
pnon_trainable_variables
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
*:(А2layer_normalization_2/gamma
):'А2layer_normalization_2/beta
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
░
qlayer_metrics

rlayers
smetrics
0	variables
1regularization_losses
tlayer_regularization_losses
2trainable_variables
unon_trainable_variables
╧__call__
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
vlayer_metrics

wlayers
xmetrics
4	variables
5regularization_losses
ylayer_regularization_losses
6trainable_variables
znon_trainable_variables
╤__call__
+╥&call_and_return_all_conditional_losses
'╥"call_and_return_conditional_losses"
_generic_user_object
": 
ГHА2dense_2/kernel
:А2dense_2/bias
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
░
{layer_metrics

|layers
}metrics
:	variables
;regularization_losses
~layer_regularization_losses
<trainable_variables
non_trainable_variables
╙__call__
+╘&call_and_return_all_conditional_losses
'╘"call_and_return_conditional_losses"
_generic_user_object
*:(А2layer_normalization_3/gamma
):'А2layer_normalization_3/beta
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
╡
Аlayer_metrics
Бlayers
Вmetrics
@	variables
Aregularization_losses
 Гlayer_regularization_losses
Btrainable_variables
Дnon_trainable_variables
╒__call__
+╓&call_and_return_all_conditional_losses
'╓"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Еlayer_metrics
Жlayers
Зmetrics
D	variables
Eregularization_losses
 Иlayer_regularization_losses
Ftrainable_variables
Йnon_trainable_variables
╫__call__
+╪&call_and_return_all_conditional_losses
'╪"call_and_return_conditional_losses"
_generic_user_object
+:)	ГX2output_regression/kernel
$:"2output_regression/bias
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
╡
Кlayer_metrics
Лlayers
Мmetrics
J	variables
Kregularization_losses
 Нlayer_regularization_losses
Ltrainable_variables
Оnon_trainable_variables
┘__call__
+┌&call_and_return_all_conditional_losses
'┌"call_and_return_conditional_losses"
_generic_user_object
:	 (2iter
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
 "
trackable_dict_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
@
П0
Р1
С2
Т3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
┐

Уtotal

Фcount
Х	variables
Ц	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Ц

Чtotal

Шcount
Щ
_fn_kwargs
Ъ	variables
Ы	keras_api"╩
_tf_keras_metricп{"class_name": "MeanMetricWrapper", "name": "mean_squared_error", "dtype": "float32", "config": {"name": "mean_squared_error", "dtype": "float32", "fn": "mean_squared_error"}}
Щ

Ьtotal

Эcount
Ю
_fn_kwargs
Я	variables
а	keras_api"═
_tf_keras_metric▓{"class_name": "MeanMetricWrapper", "name": "mean_absolute_error", "dtype": "float32", "config": {"name": "mean_absolute_error", "dtype": "float32", "fn": "mean_absolute_error"}}
║

бtotal

вcount
г
_fn_kwargs
д	variables
е	keras_api"ю
_tf_keras_metric╙{"class_name": "MeanMetricWrapper", "name": "mean_absolute_percentage_error", "dtype": "float32", "config": {"name": "mean_absolute_percentage_error", "dtype": "float32", "fn": "mean_absolute_percentage_error"}}
:  (2total
:  (2count
0
У0
Ф1"
trackable_list_wrapper
.
Х	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ч0
Ш1"
trackable_list_wrapper
.
Ъ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ь0
Э1"
trackable_list_wrapper
.
Я	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
б0
в1"
trackable_list_wrapper
.
д	variables"
_generic_user_object
": 
Г(А2dense_0/kernel/m
:А2dense_0/bias/m
*:(А2layer_normalization_1/gamma/m
):'А2layer_normalization_1/beta/m
": 
Г8А2dense_1/kernel/m
:А2dense_1/bias/m
*:(А2layer_normalization_2/gamma/m
):'А2layer_normalization_2/beta/m
": 
ГHА2dense_2/kernel/m
:А2dense_2/bias/m
*:(А2layer_normalization_3/gamma/m
):'А2layer_normalization_3/beta/m
+:)	ГX2output_regression/kernel/m
$:"2output_regression/bias/m
": 
Г(А2dense_0/kernel/v
:А2dense_0/bias/v
*:(А2layer_normalization_1/gamma/v
):'А2layer_normalization_1/beta/v
": 
Г8А2dense_1/kernel/v
:А2dense_1/bias/v
*:(А2layer_normalization_2/gamma/v
):'А2layer_normalization_2/beta/v
": 
ГHА2dense_2/kernel/v
:А2dense_2/bias/v
*:(А2layer_normalization_3/gamma/v
):'А2layer_normalization_3/beta/v
+:)	ГX2output_regression/kernel/v
$:"2output_regression/bias/v
ц2у
&__inference_model_1_layer_call_fn_1547
&__inference_model_1_layer_call_fn_1237
&__inference_model_1_layer_call_fn_1513
&__inference_model_1_layer_call_fn_1159└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Н2К
__inference__wrapped_model_628ч
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *WвT
RЪO
#К 
Input_fp         А 
(К%
Input_reagent         Г
╥2╧
A__inference_model_1_layer_call_and_return_conditional_losses_1080
A__inference_model_1_layer_call_and_return_conditional_losses_1036
A__inference_model_1_layer_call_and_return_conditional_losses_1376
A__inference_model_1_layer_call_and_return_conditional_losses_1479└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╫2╘
-__inference_reagent_concat_layer_call_fn_1560в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Є2я
H__inference_reagent_concat_layer_call_and_return_conditional_losses_1554в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_dense_0_layer_call_fn_1580в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ы2ш
A__inference_dense_0_layer_call_and_return_conditional_losses_1571в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ж2г
4__inference_layer_normalization_1_layer_call_fn_1639
4__inference_layer_normalization_1_layer_call_fn_1648┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▄2┘
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1605
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1630┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╤2╬
'__inference_concat_0_layer_call_fn_1661в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_concat_0_layer_call_and_return_conditional_losses_1655в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_dense_1_layer_call_fn_1681в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ы2ш
A__inference_dense_1_layer_call_and_return_conditional_losses_1672в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ж2г
4__inference_layer_normalization_2_layer_call_fn_1740
4__inference_layer_normalization_2_layer_call_fn_1749┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▄2┘
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1706
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1731┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╤2╬
'__inference_concat_1_layer_call_fn_1764в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_concat_1_layer_call_and_return_conditional_losses_1757в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╨2═
&__inference_dense_2_layer_call_fn_1784в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ы2ш
A__inference_dense_2_layer_call_and_return_conditional_losses_1775в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ж2г
4__inference_layer_normalization_3_layer_call_fn_1843
4__inference_layer_normalization_3_layer_call_fn_1852┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▄2┘
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_1834
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_1809┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╤2╬
'__inference_concat_2_layer_call_fn_1869в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_concat_2_layer_call_and_return_conditional_losses_1861в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┌2╫
0__inference_output_regression_layer_call_fn_1888в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ї2Є
K__inference_output_regression_layer_call_and_return_conditional_losses_1879в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╫B╘
"__inference_signature_wrapper_1273Input_fpInput_reagent"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 ▌
__inference__wrapped_model_628║()./89>?HIaв^
WвT
RЪO
#К 
Input_fp         А 
(К%
Input_reagent         Г
к "EкB
@
output_regression+К(
output_regression         ═
B__inference_concat_0_layer_call_and_return_conditional_losses_1655Ж\вY
RвO
MЪJ
#К 
inputs/0         Г(
#К 
inputs/1         А
к "&в#
К
0         Г8
Ъ д
'__inference_concat_0_layer_call_fn_1661y\вY
RвO
MЪJ
#К 
inputs/0         Г(
#К 
inputs/1         А
к "К         Г8є
B__inference_concat_1_layer_call_and_return_conditional_losses_1757мБв~
wвt
rЪo
#К 
inputs/0         Г(
#К 
inputs/1         А
#К 
inputs/2         А
к "&в#
К
0         ГH
Ъ ╦
'__inference_concat_1_layer_call_fn_1764ЯБв~
wвt
rЪo
#К 
inputs/0         Г(
#К 
inputs/1         А
#К 
inputs/2         А
к "К         ГHЭ
B__inference_concat_2_layer_call_and_return_conditional_losses_1861╓лвз
ЯвЫ
ШЪФ
#К 
inputs/0         Г(
#К 
inputs/1         А
#К 
inputs/2         А
#К 
inputs/3         А
к "&в#
К
0         ГX
Ъ ї
'__inference_concat_2_layer_call_fn_1869╔лвз
ЯвЫ
ШЪФ
#К 
inputs/0         Г(
#К 
inputs/1         А
#К 
inputs/2         А
#К 
inputs/3         А
к "К         ГXг
A__inference_dense_0_layer_call_and_return_conditional_losses_1571^0в-
&в#
!К
inputs         Г(
к "&в#
К
0         А
Ъ {
&__inference_dense_0_layer_call_fn_1580Q0в-
&в#
!К
inputs         Г(
к "К         Аг
A__inference_dense_1_layer_call_and_return_conditional_losses_1672^()0в-
&в#
!К
inputs         Г8
к "&в#
К
0         А
Ъ {
&__inference_dense_1_layer_call_fn_1681Q()0в-
&в#
!К
inputs         Г8
к "К         Аг
A__inference_dense_2_layer_call_and_return_conditional_losses_1775^890в-
&в#
!К
inputs         ГH
к "&в#
К
0         А
Ъ {
&__inference_dense_2_layer_call_fn_1784Q890в-
&в#
!К
inputs         ГH
к "К         А╡
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1605b4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ ╡
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_1630b4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ Н
4__inference_layer_normalization_1_layer_call_fn_1639U4в1
*в'
!К
inputs         А
p
к "К         АН
4__inference_layer_normalization_1_layer_call_fn_1648U4в1
*в'
!К
inputs         А
p 
к "К         А╡
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1706b./4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ ╡
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_1731b./4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ Н
4__inference_layer_normalization_2_layer_call_fn_1740U./4в1
*в'
!К
inputs         А
p
к "К         АН
4__inference_layer_normalization_2_layer_call_fn_1749U./4в1
*в'
!К
inputs         А
p 
к "К         А╡
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_1809b>?4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ ╡
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_1834b>?4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ Н
4__inference_layer_normalization_3_layer_call_fn_1843U>?4в1
*в'
!К
inputs         А
p
к "К         АН
4__inference_layer_normalization_3_layer_call_fn_1852U>?4в1
*в'
!К
inputs         А
p 
к "К         Аш
A__inference_model_1_layer_call_and_return_conditional_losses_1036в()./89>?HIiвf
_в\
RЪO
#К 
Input_fp         А 
(К%
Input_reagent         Г
p

 
к "%в"
К
0         
Ъ ш
A__inference_model_1_layer_call_and_return_conditional_losses_1080в()./89>?HIiвf
_в\
RЪO
#К 
Input_fp         А 
(К%
Input_reagent         Г
p 

 
к "%в"
К
0         
Ъ у
A__inference_model_1_layer_call_and_return_conditional_losses_1376Э()./89>?HIdвa
ZвW
MЪJ
#К 
inputs/0         А 
#К 
inputs/1         Г
p

 
к "%в"
К
0         
Ъ у
A__inference_model_1_layer_call_and_return_conditional_losses_1479Э()./89>?HIdвa
ZвW
MЪJ
#К 
inputs/0         А 
#К 
inputs/1         Г
p 

 
к "%в"
К
0         
Ъ └
&__inference_model_1_layer_call_fn_1159Х()./89>?HIiвf
_в\
RЪO
#К 
Input_fp         А 
(К%
Input_reagent         Г
p

 
к "К         └
&__inference_model_1_layer_call_fn_1237Х()./89>?HIiвf
_в\
RЪO
#К 
Input_fp         А 
(К%
Input_reagent         Г
p 

 
к "К         ╗
&__inference_model_1_layer_call_fn_1513Р()./89>?HIdвa
ZвW
MЪJ
#К 
inputs/0         А 
#К 
inputs/1         Г
p

 
к "К         ╗
&__inference_model_1_layer_call_fn_1547Р()./89>?HIdвa
ZвW
MЪJ
#К 
inputs/0         А 
#К 
inputs/1         Г
p 

 
к "К         м
K__inference_output_regression_layer_call_and_return_conditional_losses_1879]HI0в-
&в#
!К
inputs         ГX
к "%в"
К
0         
Ъ Д
0__inference_output_regression_layer_call_fn_1888PHI0в-
&в#
!К
inputs         ГX
к "К         ╙
H__inference_reagent_concat_layer_call_and_return_conditional_losses_1554Ж\вY
RвO
MЪJ
#К 
inputs/0         А 
#К 
inputs/1         Г
к "&в#
К
0         Г(
Ъ к
-__inference_reagent_concat_layer_call_fn_1560y\вY
RвO
MЪJ
#К 
inputs/0         А 
#К 
inputs/1         Г
к "К         Г(∙
"__inference_signature_wrapper_1273╥()./89>?HIyвv
в 
oкl
/
Input_fp#К 
Input_fp         А 
9
Input_reagent(К%
Input_reagent         Г"EкB
@
output_regression+К(
output_regression         