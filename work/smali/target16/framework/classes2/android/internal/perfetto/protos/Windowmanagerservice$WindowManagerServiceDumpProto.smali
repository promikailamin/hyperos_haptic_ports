.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$WindowManagerServiceDumpProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WindowManagerServiceDumpProto"
.end annotation


# static fields
.field public static final blacklist BACK_NAVIGATION:J = 0x10b0000000cL

.field public static final blacklist DISPLAY_FROZEN:J = 0x10800000006L

.field public static final blacklist FOCUSED_APP:J = 0x10900000004L

.field public static final blacklist FOCUSED_DISPLAY_ID:J = 0x10500000009L

.field public static final blacklist FOCUSED_WINDOW:J = 0x10b00000003L

.field public static final blacklist HARD_KEYBOARD_AVAILABLE:J = 0x1080000000aL

.field public static final blacklist INPUT_METHOD_WINDOW:J = 0x10b00000005L

.field public static final blacklist LAST_ORIENTATION:J = 0x10500000008L

.field public static final blacklist POLICY:J = 0x10b00000001L

.field public static final blacklist ROOT_WINDOW_CONTAINER:J = 0x10b00000002L

.field public static final blacklist ROTATION:J = 0x10500000007L

.field public static final blacklist WINDOW_FRAMES_VALID:J = 0x1080000000bL


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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
