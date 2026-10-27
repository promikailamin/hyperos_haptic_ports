.class final Landroid/app/ActivityThread$Profiler;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Profiler"
.end annotation


# instance fields
.field greylist-max-o autoStopProfiler:Z

.field greylist-max-o handlingProfiling:Z

.field blacklist mClockType:I

.field blacklist mProfilerOutputVersion:I

.field greylist-max-o profileFd:Landroid/os/ParcelFileDescriptor;

.field greylist-max-o profileFile:Ljava/lang/String;

.field greylist-max-o profiling:Z

.field greylist-max-o samplingInterval:I

.field greylist-max-o streamingOutput:Z


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o setProfiler(Landroid/app/ProfilerInfo;)V
    .registers 4

    .line 1051
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1052
    iget-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v1, :cond_e

    .line 1053
    if-eqz v0, :cond_d

    .line 1055
    :try_start_8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 1058
    goto :goto_d

    .line 1056
    :catch_c
    move-exception p1

    .line 1060
    :cond_d
    :goto_d
    return-void

    .line 1062
    :cond_e
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_19

    .line 1064
    :try_start_12
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_18

    .line 1067
    goto :goto_19

    .line 1065
    :catch_18
    move-exception v1

    .line 1069
    :cond_19
    :goto_19
    iget-object v1, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 1070
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1071
    iget v0, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v0, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 1072
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 1073
    iget-boolean v0, p1, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 1074
    iget v0, p1, Landroid/app/ProfilerInfo;->clockType:I

    iput v0, p0, Landroid/app/ActivityThread$Profiler;->mClockType:I

    .line 1075
    iget p1, p1, Landroid/app/ProfilerInfo;->profilerOutputVersion:I

    iput p1, p0, Landroid/app/ActivityThread$Profiler;->mProfilerOutputVersion:I

    .line 1076
    return-void
.end method

.method public greylist-max-o startProfiling()V
    .registers 11

    .line 1078
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_66

    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_9

    goto :goto_66

    .line 1082
    :cond_9
    :try_start_9
    const-string v0, "debug.traceview-buffer-size-mb"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1083
    nop

    .line 1084
    iget v1, p0, Landroid/app/ActivityThread$Profiler;->mClockType:I

    iget v2, p0, Landroid/app/ActivityThread$Profiler;->mProfilerOutputVersion:I

    invoke-static {v2}, Landroid/app/ProfilerInfo;->getFlagsForOutputVersion(I)I

    move-result v2

    or-int v6, v1, v2

    .line 1085
    iget-object v3, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v5, v0, 0x400

    iget v0, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    move v7, v1

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    move v7, v0

    :goto_31
    iget v8, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    iget-boolean v9, p0, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    invoke-static/range {v3 .. v9}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V

    .line 1088
    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_3a} :catch_3b

    .line 1097
    goto :goto_65

    .line 1089
    :catch_3b
    move-exception v0

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profiling failed on path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1092
    :try_start_56
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1093
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5e} :catch_5f

    .line 1096
    goto :goto_65

    .line 1094
    :catch_5f
    move-exception v0

    .line 1095
    const-string v1, "Failure closing profile fd"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1098
    :goto_65
    return-void

    .line 1079
    :cond_66
    :goto_66
    return-void
.end method

.method public greylist-max-o stopProfiling()V
    .registers 2

    .line 1100
    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_1a

    .line 1101
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    .line 1102
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1103
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_15

    .line 1105
    :try_start_e
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_14

    .line 1107
    goto :goto_15

    .line 1106
    :catch_14
    move-exception v0

    .line 1109
    :cond_15
    :goto_15
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 1110
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 1112
    :cond_1a
    return-void
.end method
