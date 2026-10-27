.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$WindowFramesProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WindowFramesProto"
.end annotation


# static fields
.field public static final blacklist COMPAT_FRAME:J = 0x10b00000010L

.field public static final blacklist CONTAINING_FRAME:J = 0x10b00000001L

.field public static final blacklist CONTENT_FRAME:J = 0x10b00000002L

.field public static final blacklist CONTENT_INSETS:J = 0x10b0000000bL

.field public static final blacklist CUTOUT:J = 0x10b0000000aL

.field public static final blacklist DECOR_FRAME:J = 0x10b00000003L

.field public static final blacklist DISPLAY_FRAME:J = 0x10b00000004L

.field public static final blacklist FRAME:J = 0x10b00000005L

.field public static final blacklist OUTSETS:J = 0x10b0000000fL

.field public static final blacklist OUTSET_FRAME:J = 0x10b00000006L

.field public static final blacklist OVERSCAN_FRAME:J = 0x10b00000007L

.field public static final blacklist OVERSCAN_INSETS:J = 0x10b0000000cL

.field public static final blacklist PARENT_FRAME:J = 0x10b00000008L

.field public static final blacklist STABLE_INSETS:J = 0x10b0000000eL

.field public static final blacklist VISIBLE_FRAME:J = 0x10b00000009L

.field public static final blacklist VISIBLE_INSETS:J = 0x10b0000000dL


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

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
