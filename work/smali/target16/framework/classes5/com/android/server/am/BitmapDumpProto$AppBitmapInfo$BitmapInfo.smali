.class public final Lcom/android/server/am/BitmapDumpProto$AppBitmapInfo$BitmapInfo;
.super Ljava/lang/Object;
.source "BitmapDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BitmapDumpProto$AppBitmapInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BitmapInfo"
.end annotation


# static fields
.field public static final blacklist CONFIG:J = 0x10500000006L

.field public static final blacklist CONTENT:J = 0x10c00000008L

.field public static final blacklist HEIGHT:J = 0x10500000003L

.field public static final blacklist ID:J = 0x10300000001L

.field public static final blacklist MUTABLE:J = 0x10800000005L

.field public static final blacklist SIZE:J = 0x10500000004L

.field public static final blacklist SOURCE:J = 0x10300000007L

.field public static final blacklist WIDTH:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/BitmapDumpProto$AppBitmapInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
