.class public Landroid/filterfw/core/NativeProgram;
.super Landroid/filterfw/core/Program;
.source "NativeProgram.java"


# instance fields
.field private greylist-max-o mHasGetValueFunction:Z

.field private greylist-max-o mHasInitFunction:Z

.field private greylist-max-o mHasResetFunction:Z

.field private greylist-max-o mHasSetValueFunction:Z

.field private greylist-max-o mHasTeardownFunction:Z

.field private greylist-max-o mTornDown:Z

.field private greylist-max-o nativeProgramId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 152
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 36
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasInitFunction:Z

    .line 30
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasTeardownFunction:Z

    .line 31
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasSetValueFunction:Z

    .line 32
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasGetValueFunction:Z

    .line 33
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasResetFunction:Z

    .line 34
    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    .line 38
    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->allocate()Z

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".so"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->openNativeLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_process"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeProgram;->bindProcessFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_init"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->bindInitFunction(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/filterfw/core/NativeProgram;->mHasInitFunction:Z

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_teardown"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->bindTeardownFunction(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/filterfw/core/NativeProgram;->mHasTeardownFunction:Z

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_setvalue"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->bindSetValueFunction(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/filterfw/core/NativeProgram;->mHasSetValueFunction:Z

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_getvalue"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->bindGetValueFunction(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/filterfw/core/NativeProgram;->mHasGetValueFunction:Z

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_reset"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->bindResetFunction(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/filterfw/core/NativeProgram;->mHasResetFunction:Z

    .line 71
    iget-boolean p1, p0, Landroid/filterfw/core/NativeProgram;->mHasInitFunction:Z

    if-eqz p1, :cond_dc

    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->callNativeInit()Z

    move-result p1

    if-eqz p1, :cond_d4

    goto :goto_dc

    .line 72
    :cond_d4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not initialize NativeProgram!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_dc
    :goto_dc
    return-void

    .line 50
    :cond_dd
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find native program function name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in library "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "! This function is required!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 43
    :cond_106
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find native library named \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' required for native program!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private native greylist-max-o allocate()Z
.end method

.method private native greylist-max-o bindGetValueFunction(Ljava/lang/String;)Z
.end method

.method private native greylist-max-o bindInitFunction(Ljava/lang/String;)Z
.end method

.method private native greylist-max-o bindProcessFunction(Ljava/lang/String;)Z
.end method

.method private native greylist-max-o bindResetFunction(Ljava/lang/String;)Z
.end method

.method private native greylist-max-o bindSetValueFunction(Ljava/lang/String;)Z
.end method

.method private native greylist-max-o bindTeardownFunction(Ljava/lang/String;)Z
.end method

.method private native greylist-max-o callNativeGetValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native greylist-max-o callNativeInit()Z
.end method

.method private native greylist-max-o callNativeProcess([Landroid/filterfw/core/NativeFrame;Landroid/filterfw/core/NativeFrame;)Z
.end method

.method private native greylist-max-o callNativeReset()Z
.end method

.method private native greylist-max-o callNativeSetValue(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native greylist-max-o callNativeTeardown()Z
.end method

.method private native greylist-max-o deallocate()Z
.end method

.method private native greylist-max-o nativeInit()Z
.end method

.method private native greylist-max-o openNativeLibrary(Ljava/lang/String;)Z
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Landroid/filterfw/core/NativeProgram;->tearDown()V

    .line 95
    return-void
.end method

.method public greylist-max-o getHostValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 141
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    if-nez v0, :cond_15

    .line 144
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasGetValueFunction:Z

    if-eqz v0, :cond_d

    .line 148
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeProgram;->callNativeGetValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 145
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Attempting to get native variable, but native code does not define native getvalue function!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "NativeProgram already torn down!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .registers 6

    .line 99
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    if-nez v0, :cond_5f

    .line 102
    array-length v0, p1

    new-array v0, v0, [Landroid/filterfw/core/NativeFrame;

    .line 103
    const/4 v1, 0x0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_3e

    .line 104
    aget-object v2, p1, v1

    if-eqz v2, :cond_35

    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/filterfw/core/NativeFrame;

    if-eqz v2, :cond_16

    goto :goto_35

    .line 107
    :cond_16
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NativeProgram got non-native frame as input "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_35
    :goto_35
    aget-object v2, p1, v1

    check-cast v2, Landroid/filterfw/core/NativeFrame;

    aput-object v2, v0, v1

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 112
    :cond_3e
    nop

    .line 113
    if-eqz p2, :cond_4e

    instance-of p1, p2, Landroid/filterfw/core/NativeFrame;

    if-eqz p1, :cond_46

    goto :goto_4e

    .line 116
    :cond_46
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "NativeProgram got non-native output frame!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_4e
    :goto_4e
    check-cast p2, Landroid/filterfw/core/NativeFrame;

    .line 120
    invoke-direct {p0, v0, p2}, Landroid/filterfw/core/NativeProgram;->callNativeProcess([Landroid/filterfw/core/NativeFrame;Landroid/filterfw/core/NativeFrame;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 123
    return-void

    .line 121
    :cond_57
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Calling native process() caused error!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_5f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "NativeProgram already torn down!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o reset()V
    .registers 3

    .line 87
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasResetFunction:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->callNativeReset()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 88
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not reset NativeProgram!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_13
    :goto_13
    return-void
.end method

.method public greylist-max-o setHostValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 127
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    if-nez v0, :cond_3a

    .line 130
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasSetValueFunction:Z

    if-eqz v0, :cond_32

    .line 134
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/NativeProgram;->callNativeSetValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 137
    return-void

    .line 135
    :cond_13
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error setting native value for variable \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 131
    :cond_32
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Attempting to set native variable, but native code does not define native setvalue function!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_3a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "NativeProgram already torn down!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o tearDown()V
    .registers 3

    .line 77
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    if-eqz v0, :cond_5

    return-void

    .line 78
    :cond_5
    iget-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mHasTeardownFunction:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->callNativeTeardown()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_18

    .line 79
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not tear down NativeProgram!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_18
    :goto_18
    invoke-direct {p0}, Landroid/filterfw/core/NativeProgram;->deallocate()Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/NativeProgram;->mTornDown:Z

    .line 83
    return-void
.end method
