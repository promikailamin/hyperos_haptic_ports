.class public final Lcom/android/server/tv/watchdogservice/PerformanceDump$IoThresholdByPackage;
.super Ljava/lang/Object;
.source "PerformanceDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/watchdogservice/PerformanceDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IoThresholdByPackage"
.end annotation


# static fields
.field public static final blacklist PACKAGE_NAME:J = 0x10900000003L

.field public static final blacklist PACKAGE_TYPE:J = 0x10e00000001L

.field public static final blacklist THRESHOLD:J = 0x10b00000002L


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

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
