.class public interface abstract annotation Landroid/hardware/biometrics/IIdentityCheckStateListener$WatchRangingState;
.super Ljava/lang/Object;
.source "IIdentityCheckStateListener.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IIdentityCheckStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "WatchRangingState"
.end annotation


# static fields
.field public static final blacklist WATCH_RANGING_IDLE:I = 0x0

.field public static final blacklist WATCH_RANGING_STARTED:I = 0x2

.field public static final blacklist WATCH_RANGING_STOPPED:I = 0x3

.field public static final blacklist WATCH_RANGING_SUCCESSFUL:I = 0x1
