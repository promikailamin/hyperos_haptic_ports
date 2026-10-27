.class public final Landroid/internal/perfetto/protos/Windowmanager$WindowManagerTraceFileProto;
.super Ljava/lang/Object;
.source "Windowmanager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WindowManagerTraceFileProto"
.end annotation


# static fields
.field public static final blacklist ENTRY:J = 0x20b00000002L

.field public static final blacklist INVALID:I = 0x0

.field public static final blacklist MAGIC_NUMBER:J = 0x10600000001L

.field public static final blacklist MAGIC_NUMBER_H:I = 0x45434152

.field public static final blacklist MAGIC_NUMBER_L:I = 0x544e4957

.field public static final blacklist REAL_TO_ELAPSED_TIME_OFFSET_NANOS:J = 0x10600000003L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Windowmanager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
