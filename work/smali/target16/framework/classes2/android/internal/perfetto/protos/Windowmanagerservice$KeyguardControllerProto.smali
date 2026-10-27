.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$KeyguardControllerProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyguardControllerProto"
.end annotation


# static fields
.field public static final blacklist AOD_SHOWING:J = 0x10800000003L

.field public static final blacklist KEYGUARD_GOING_AWAY:J = 0x10800000005L

.field public static final blacklist KEYGUARD_OCCLUDED_STATES:J = 0x20b00000002L

.field public static final blacklist KEYGUARD_PER_DISPLAY:J = 0x20b00000004L

.field public static final blacklist KEYGUARD_SHOWING:J = 0x10800000001L


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

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
