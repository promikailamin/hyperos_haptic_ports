.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$RootWindowContainerProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RootWindowContainerProto"
.end annotation


# static fields
.field public static final blacklist DEFAULT_MIN_SIZE_RESIZABLE_TASK:J = 0x10500000008L

.field public static final blacklist DISPLAYS:J = 0x20b00000002L

.field public static final blacklist IS_HOME_RECENTS_COMPONENT:J = 0x10800000006L

.field public static final blacklist KEYGUARD_CONTROLLER:J = 0x10b00000005L

.field public static final blacklist PENDING_ACTIVITIES:J = 0x20b00000007L

.field public static final blacklist WINDOWS:J = 0x20b00000004L

.field public static final blacklist WINDOW_CONTAINER:J = 0x10b00000001L


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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
