.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$WindowOrientationListenerProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WindowOrientationListenerProto"
.end annotation


# static fields
.field public static final blacklist ENABLED:J = 0x10800000001L

.field public static final blacklist ROTATION:J = 0x10e00000002L


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

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
