.class public final Landroid/internal/perfetto/protos/Point$PointProto;
.super Ljava/lang/Object;
.source "Point.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PointProto"
.end annotation


# static fields
.field public static final blacklist X:J = 0x10500000001L

.field public static final blacklist Y:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Point;)V
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
