.class public final Landroid/internal/perfetto/protos/Displaycutout$DisplayCutoutProto;
.super Ljava/lang/Object;
.source "Displaycutout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Displaycutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayCutoutProto"
.end annotation


# static fields
.field public static final blacklist BOUND_BOTTOM:J = 0x10b00000006L

.field public static final blacklist BOUND_LEFT:J = 0x10b00000003L

.field public static final blacklist BOUND_RIGHT:J = 0x10b00000005L

.field public static final blacklist BOUND_TOP:J = 0x10b00000004L

.field public static final blacklist INSETS:J = 0x10b00000001L

.field public static final blacklist SIDE_OVERRIDES:J = 0x20500000008L

.field public static final blacklist WATERFALL_INSETS:J = 0x10b00000007L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Displaycutout;)V
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
