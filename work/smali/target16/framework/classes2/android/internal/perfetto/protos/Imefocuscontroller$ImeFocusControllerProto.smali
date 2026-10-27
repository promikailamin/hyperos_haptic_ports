.class public final Landroid/internal/perfetto/protos/Imefocuscontroller$ImeFocusControllerProto;
.super Ljava/lang/Object;
.source "Imefocuscontroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Imefocuscontroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImeFocusControllerProto"
.end annotation


# static fields
.field public static final blacklist HAS_IME_FOCUS:J = 0x10800000001L

.field public static final blacklist NEXT_SERVED_VIEW:J = 0x10900000003L

.field public static final blacklist SERVED_VIEW:J = 0x10900000002L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Imefocuscontroller;)V
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
