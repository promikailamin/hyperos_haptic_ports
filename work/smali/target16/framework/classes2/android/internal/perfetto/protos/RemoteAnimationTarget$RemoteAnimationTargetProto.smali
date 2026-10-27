.class public final Landroid/internal/perfetto/protos/RemoteAnimationTarget$RemoteAnimationTargetProto;
.super Ljava/lang/Object;
.source "RemoteAnimationTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/RemoteAnimationTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RemoteAnimationTargetProto"
.end annotation


# static fields
.field public static final blacklist CLIP_RECT:J = 0x10b00000005L

.field public static final blacklist CONTENT_INSETS:J = 0x10b00000006L

.field public static final blacklist IS_TRANSLUCENT:J = 0x10800000004L

.field public static final blacklist LEASH:J = 0x10b00000003L

.field public static final blacklist LOCAL_BOUNDS:J = 0x10b0000000dL

.field public static final blacklist MODE:J = 0x10500000002L

.field public static final blacklist POSITION:J = 0x10b00000008L

.field public static final blacklist PREFIX_ORDER_INDEX:J = 0x10500000007L

.field public static final blacklist SCREEN_SPACE_BOUNDS:J = 0x10b0000000eL

.field public static final blacklist SOURCE_CONTAINER_BOUNDS:J = 0x10b00000009L

.field public static final blacklist START_BOUNDS:J = 0x10b0000000cL

.field public static final blacklist START_LEASH:J = 0x10b0000000bL

.field public static final blacklist TASK_ID:J = 0x10500000001L

.field public static final blacklist WINDOW_CONFIGURATION:J = 0x10b0000000aL


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/RemoteAnimationTarget;)V
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
