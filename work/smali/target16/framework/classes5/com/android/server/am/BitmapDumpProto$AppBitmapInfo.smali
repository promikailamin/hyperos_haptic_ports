.class public final Lcom/android/server/am/BitmapDumpProto$AppBitmapInfo;
.super Ljava/lang/Object;
.source "BitmapDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BitmapDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppBitmapInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BitmapDumpProto$AppBitmapInfo$BitmapInfo;
    }
.end annotation


# static fields
.field public static final blacklist BITMAPS:J = 0x20b00000003L

.field public static final blacklist PID:J = 0x10500000001L

.field public static final blacklist PROCESS_NAME:J = 0x10900000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/BitmapDumpProto;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
