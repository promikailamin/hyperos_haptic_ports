.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$BackNavigationProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackNavigationProto"
.end annotation


# static fields
.field public static final blacklist ANIMATION_IN_PROGRESS:J = 0x10800000001L

.field public static final blacklist ANIMATION_RUNNING:J = 0x10800000005L

.field public static final blacklist LAST_BACK_TYPE:J = 0x10500000002L

.field public static final blacklist MAIN_OPEN_ACTIVITY:J = 0x10900000004L

.field public static final blacklist SHOW_WALLPAPER:J = 0x10800000003L


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

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
