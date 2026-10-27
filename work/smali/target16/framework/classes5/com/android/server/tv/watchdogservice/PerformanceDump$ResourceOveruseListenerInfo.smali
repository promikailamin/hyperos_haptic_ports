.class public final Lcom/android/server/tv/watchdogservice/PerformanceDump$ResourceOveruseListenerInfo;
.super Ljava/lang/Object;
.source "PerformanceDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/watchdogservice/PerformanceDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResourceOveruseListenerInfo"
.end annotation


# static fields
.field public static final blacklist FLAG:J = 0x10300000001L

.field public static final blacklist PID:J = 0x10300000002L

.field public static final blacklist USER_PACKAGE_INFO:J = 0x10b00000003L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/tv/watchdogservice/PerformanceDump;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
