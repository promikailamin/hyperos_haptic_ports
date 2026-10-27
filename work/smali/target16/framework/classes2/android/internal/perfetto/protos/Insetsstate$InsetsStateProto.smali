.class public final Landroid/internal/perfetto/protos/Insetsstate$InsetsStateProto;
.super Ljava/lang/Object;
.source "Insetsstate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Insetsstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InsetsStateProto"
.end annotation


# static fields
.field public static final blacklist DISPLAY_CUTOUT:J = 0x10b00000003L

.field public static final blacklist DISPLAY_FRAME:J = 0x10b00000002L

.field public static final blacklist SOURCES:J = 0x20b00000001L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Insetsstate;)V
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
