.class public interface abstract Lcom/android/server/appop/AppOpsUidStateTracker;
.super Ljava/lang/Object;
.source "AppOpsUidStateTracker.java"


# direct methods
.method public static processStateToUidState(I)I
    .registers 4

    .line 0
    const/4 v0, -0x1

    const/16 v1, 0x2bc

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-gt p0, v0, :cond_c

    const/16 p0, 0x64

    return p0

    :cond_c
    const/4 v0, 0x2

    if-gt p0, v0, :cond_12

    const/16 p0, 0xc8

    return p0

    :cond_12
    const/4 v0, 0x3

    const/16 v2, 0x1f4

    if-gt p0, v0, :cond_18

    return v2

    :cond_18
    const/4 v0, 0x4

    if-gt p0, v0, :cond_1e

    const/16 p0, 0x190

    return p0

    :cond_1e
    const/4 v0, 0x5

    if-gt p0, v0, :cond_22

    return v2

    :cond_22
    const/16 v0, 0xb

    if-gt p0, v0, :cond_29

    const/16 p0, 0x258

    return p0

    :cond_29
    const/16 v0, 0x14

    if-ge p0, v0, :cond_2e

    return v1

    :cond_2e
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public abstract addUidStateChangedCallback(Ljava/util/concurrent/Executor;Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;)V
.end method

.method public abstract dumpEvents(Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpUidState(Ljava/io/PrintWriter;IJ)V
.end method

.method public abstract evalMode(III)I
.end method

.method public abstract getUidState(I)I
.end method

.method public abstract isUidInForeground(I)Z
.end method

.method public abstract updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
.end method

.method public abstract updateUidProcState(III)V
.end method
