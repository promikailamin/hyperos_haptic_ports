.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$DisplayRotationProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayRotationProto"
.end annotation


# static fields
.field public static final blacklist FIXED_TO_USER_ROTATION_MODE:J = 0x10500000004L

.field public static final blacklist FROZEN_TO_USER_ROTATION:J = 0x10800000002L

.field public static final blacklist IS_FIXED_TO_USER_ROTATION:J = 0x10800000006L

.field public static final blacklist LAST_ORIENTATION:J = 0x10500000005L

.field public static final blacklist ROTATION:J = 0x10500000001L

.field public static final blacklist USER_ROTATION:J = 0x10500000003L


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

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
