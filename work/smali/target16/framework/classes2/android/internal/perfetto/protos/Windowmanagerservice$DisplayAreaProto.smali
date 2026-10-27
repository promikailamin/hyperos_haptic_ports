.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$DisplayAreaProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayAreaProto"
.end annotation


# static fields
.field public static final blacklist CHILDREN:J = 0x20b00000003L

.field public static final blacklist FEATURE_ID:J = 0x10500000006L

.field public static final blacklist IS_IGNORING_ORIENTATION_REQUEST:J = 0x10800000008L

.field public static final blacklist IS_ORGANIZED:J = 0x10800000007L

.field public static final blacklist IS_ROOT_DISPLAY_AREA:J = 0x10800000005L

.field public static final blacklist IS_TASK_DISPLAY_AREA:J = 0x10800000004L

.field public static final blacklist NAME:J = 0x10900000002L

.field public static final blacklist WINDOW_CONTAINER:J = 0x10b00000001L


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

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
