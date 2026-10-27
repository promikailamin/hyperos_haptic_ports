.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$WindowTokenProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WindowTokenProto"
.end annotation


# static fields
.field public static final blacklist HASH_CODE:J = 0x10500000002L

.field public static final blacklist PAUSED:J = 0x10800000006L

.field public static final blacklist WAITING_TO_SHOW:J = 0x10800000005L

.field public static final blacklist WINDOWS:J = 0x20b00000003L

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

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
