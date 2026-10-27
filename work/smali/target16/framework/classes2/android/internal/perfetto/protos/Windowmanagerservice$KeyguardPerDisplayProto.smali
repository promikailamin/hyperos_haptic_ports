.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$KeyguardPerDisplayProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyguardPerDisplayProto"
.end annotation


# static fields
.field public static final blacklist AOD_SHOWING:J = 0x10800000003L

.field public static final blacklist DISPLAY_ID:J = 0x10500000001L

.field public static final blacklist KEYGUARD_GOING_AWAY:J = 0x10800000005L

.field public static final blacklist KEYGUARD_OCCLUDED:J = 0x10800000004L

.field public static final blacklist KEYGUARD_SHOWING:J = 0x10800000002L


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

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
