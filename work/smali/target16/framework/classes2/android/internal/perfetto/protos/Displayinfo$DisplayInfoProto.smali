.class public final Landroid/internal/perfetto/protos/Displayinfo$DisplayInfoProto;
.super Ljava/lang/Object;
.source "Displayinfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Displayinfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayInfoProto"
.end annotation


# static fields
.field public static final blacklist APP_HEIGHT:J = 0x10500000004L

.field public static final blacklist APP_WIDTH:J = 0x10500000003L

.field public static final blacklist CUTOUT:J = 0x10b00000007L

.field public static final blacklist FLAGS:J = 0x10500000006L

.field public static final blacklist LOGICAL_HEIGHT:J = 0x10500000002L

.field public static final blacklist LOGICAL_WIDTH:J = 0x10500000001L

.field public static final blacklist NAME:J = 0x10900000005L

.field public static final blacklist TYPE:J = 0x10500000008L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Displayinfo;)V
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
