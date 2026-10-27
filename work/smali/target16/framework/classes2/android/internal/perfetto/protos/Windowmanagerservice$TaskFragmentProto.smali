.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$TaskFragmentProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskFragmentProto"
.end annotation


# static fields
.field public static final blacklist ACTIVITY_TYPE:J = 0x10500000003L

.field public static final blacklist DISPLAY_ID:J = 0x10500000002L

.field public static final blacklist MIN_HEIGHT:J = 0x10500000005L

.field public static final blacklist MIN_WIDTH:J = 0x10500000004L

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

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
