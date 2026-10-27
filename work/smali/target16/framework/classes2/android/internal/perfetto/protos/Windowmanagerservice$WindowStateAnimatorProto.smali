.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$WindowStateAnimatorProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WindowStateAnimatorProto"
.end annotation


# static fields
.field public static final blacklist COMMIT_DRAW_PENDING:I = 0x2

.field public static final blacklist DRAW_PENDING:I = 0x1

.field public static final blacklist DRAW_STATE:J = 0x10e00000003L

.field public static final blacklist HAS_DRAWN:I = 0x4

.field public static final blacklist LAST_CLIP_RECT:J = 0x10b00000001L

.field public static final blacklist NO_SURFACE:I = 0x0

.field public static final blacklist READY_TO_SHOW:I = 0x3

.field public static final blacklist SURFACE:J = 0x10b00000002L

.field public static final blacklist SYSTEM_DECOR_RECT:J = 0x10b00000004L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Windowmanagerservice;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
