.class public Landroid/perf/PerfStubImpl;
.super Ljava/lang/Object;
.source "PerfStubImpl.java"

# interfaces
.implements Landroid/perf/PerfStub;


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "PerfStubImpl"


# instance fields
.field private blacklist mBoost:Landroid/util/BoostFramework;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist perfActivityLaunchBoost(Ljava/lang/String;II)I
    .registers 5
    .param p1, "userDataStr"    # Ljava/lang/String;
    .param p2, "userData1"    # I
    .param p3, "userData2"    # I

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfAnimBoost(Ljava/lang/String;)I
    .registers 4
    .param p1, "userDataStr"    # Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfAnimBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1083

    invoke-virtual {v0, v1, p1}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist perfAppUpdateBoost(Ljava/lang/String;II)I
    .registers 6
    .param p1, "userDataStr"    # Ljava/lang/String;
    .param p2, "userData1"    # I
    .param p3, "userData2"    # I

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfAppUpdateBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1092

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfColdLaunchBoost(Ljava/lang/String;II)I
    .registers 6
    .param p1, "userDataStr"    # Ljava/lang/String;
    .param p2, "userData1"    # I
    .param p3, "userData2"    # I

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfColdLaunchBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1081

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfDisplayRotationAnimBoost(Ljava/lang/String;)I
    .registers 4
    .param p1, "userDataStr"    # Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfDisplayRotationAnimBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1090

    invoke-virtual {v0, v1, p1}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist perfDisplayRotationLatencyBoost(Ljava/lang/String;)I
    .registers 4
    .param p1, "userDataStr"    # Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfDisplayRotationLatencyBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1089

    invoke-virtual {v0, v1, p1}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist perfDragBoost(Ljava/lang/String;II)I
    .registers 6
    .param p1, "userDataStr"    # Ljava/lang/String;
    .param p2, "userData1"    # I
    .param p3, "userData2"    # I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfDragBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1087

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfFirstDrawBoost(Ljava/lang/String;II)I
    .registers 6
    .param p1, "userDataStr"    # Ljava/lang/String;
    .param p2, "userData1"    # I
    .param p3, "userData2"    # I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfFirstDrawBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1042

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfGetFeedback(ILjava/lang/String;)I
    .registers 5
    .param p1, "req"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;

    .line 158
    const-string v0, "PerfStubImpl"

    const-string v1, "perfGetFeedback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    invoke-virtual {v0, p1, p2}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "prop_name"    # Ljava/lang/String;
    .param p2, "def_val"    # Ljava/lang/String;

    .line 138
    const-string v0, "PerfStubImpl"

    const-string v1, "perfGetProp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    invoke-virtual {v0, p1, p2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist perfGetWorkLoadType(Ljava/lang/String;)I
    .registers 4
    .param p1, "userDataStr"    # Ljava/lang/String;

    .line 143
    const-string v0, "PerfStubImpl"

    const-string v1, "perfGetWorkLoadType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    invoke-virtual {v0, v1, p1}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist perfHint(ILjava/lang/String;II)I
    .registers 7
    .param p1, "hint"    # I
    .param p2, "userDataStr"    # Ljava/lang/String;
    .param p3, "userData1"    # I
    .param p4, "userData2"    # I

    .line 153
    const-string v0, "PerfStubImpl"

    const-string v1, "perfHint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;

    .line 163
    const-string v0, "PerfStubImpl"

    const-string v1, "perfIOPrefetchStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs blacklist perfLockAcqAndRelease(IIII[I)I
    .registers 14
    .param p1, "handle"    # I
    .param p2, "duration"    # I
    .param p3, "numArgs"    # I
    .param p4, "reserveNumArgs"    # I
    .param p5, "list"    # [I

    .line 148
    const-string v0, "PerfStubImpl"

    const-string v1, "perfLockAcqAndRelease"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/util/BoostFramework;->perfLockAcqAndRelease(IIII[I)I

    move-result v0

    return v0
.end method

.method public varargs blacklist perfLockAcquire(I[I)I
    .registers 5
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 120
    const-string v0, "PerfStubImpl"

    const-string v1, "perfLockAcquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    invoke-virtual {v0, p1, p2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    move-result v0

    return v0
.end method

.method public blacklist perfLockRelease()I
    .registers 3

    .line 125
    const-string v0, "PerfStubImpl"

    const-string v1, "perfLockRelease"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result v0

    return v0
.end method

.method public blacklist perfLockReleaseHandler(I)I
    .registers 4
    .param p1, "handle"    # I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfLockReleaseHandler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-lez p1, :cond_21

    .line 132
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    invoke-virtual {v0, p1}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    move-result v0

    return v0

    .line 134
    :cond_21
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist perfMTPBoost(Ljava/lang/String;II)I
    .registers 6
    .param p1, "userDataStr"    # Ljava/lang/String;
    .param p2, "userData1"    # I
    .param p3, "userData2"    # I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfMTPBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1086

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfPackageInstallBoost(Ljava/lang/String;II)I
    .registers 6
    .param p1, "userDataStr"    # Ljava/lang/String;
    .param p2, "userData1"    # I
    .param p3, "userData2"    # I

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfPackageInstallBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1088

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfPerformanceModeBoost(Ljava/lang/String;II)I
    .registers 6
    .param p1, "userDataStr"    # Ljava/lang/String;
    .param p2, "userData1"    # I
    .param p3, "userData2"    # I

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfPerformanceModeBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1091

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfProcessKillBoost(Ljava/lang/String;II)I
    .registers 6
    .param p1, "userDataStr"    # Ljava/lang/String;
    .param p2, "userData1"    # I
    .param p3, "userData2"    # I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfProcessKillBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1093

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfRenderThreadBoost(Ljava/lang/String;II)I
    .registers 6
    .param p1, "userDataStr"    # Ljava/lang/String;
    .param p2, "userData1"    # I
    .param p3, "userData2"    # I

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfRenderThreadBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1096

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfScrollBoost(Ljava/lang/String;II)I
    .registers 6
    .param p1, "userDataStr"    # Ljava/lang/String;
    .param p2, "userData1"    # I
    .param p3, "userData2"    # I

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfScrollBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1080

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist perfTapBoost()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfTouchBoost()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist perfUXEngine_events(IILjava/lang/String;I)I
    .registers 7
    .param p1, "opcode"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "lat"    # I

    .line 168
    const-string v0, "PerfStubImpl"

    const-string v1, "perfUXEngine_events1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I
    .registers 14
    .param p1, "opcode"    # I
    .param p2, "pid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "lat"    # I
    .param p5, "codePath"    # Ljava/lang/String;

    .line 173
    const-string v0, "PerfStubImpl"

    const-string v1, "perfUXEngine_events2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist perfWarmLaunchBoost(Ljava/lang/String;II)I
    .registers 6
    .param p1, "userDataStr"    # Ljava/lang/String;
    .param p2, "userData1"    # I
    .param p3, "userData2"    # I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfWarmLaunchBoost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Landroid/perf/PerfStubImpl;->mBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1082

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method
