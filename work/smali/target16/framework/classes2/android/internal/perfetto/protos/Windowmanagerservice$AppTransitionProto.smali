.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$AppTransitionProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppTransitionProto"
.end annotation


# static fields
.field public static final blacklist APP_STATE_IDLE:I = 0x0

.field public static final blacklist APP_STATE_READY:I = 0x1

.field public static final blacklist APP_STATE_RUNNING:I = 0x2

.field public static final blacklist APP_STATE_TIMEOUT:I = 0x3

.field public static final blacklist APP_TRANSITION_STATE:J = 0x10e00000001L

.field public static final blacklist LAST_USED_APP_TRANSITION:J = 0x10e00000002L


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

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
