.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$WindowContainerChildProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WindowContainerChildProto"
.end annotation


# static fields
.field public static final blacklist ACTIVITY:J = 0x10b00000006L

.field public static final blacklist DISPLAY_AREA:J = 0x10b00000004L

.field public static final blacklist DISPLAY_CONTENT:J = 0x10b00000003L

.field public static final blacklist TASK:J = 0x10b00000005L

.field public static final blacklist TASK_FRAGMENT:J = 0x10b00000009L

.field public static final blacklist WINDOW:J = 0x10b00000008L

.field public static final blacklist WINDOW_CONTAINER:J = 0x10b00000002L

.field public static final blacklist WINDOW_TOKEN:J = 0x10b00000007L


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

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
