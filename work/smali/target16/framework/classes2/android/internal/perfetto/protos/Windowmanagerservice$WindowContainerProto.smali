.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$WindowContainerProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WindowContainerProto"
.end annotation


# static fields
.field public static final blacklist CHILDREN:J = 0x20b00000005L

.field public static final blacklist CONFIGURATION_CONTAINER:J = 0x10b00000001L

.field public static final blacklist IDENTIFIER:J = 0x10b00000006L

.field public static final blacklist ORIENTATION:J = 0x10500000002L

.field public static final blacklist SURFACE_ANIMATOR:J = 0x10b00000004L

.field public static final blacklist SURFACE_CONTROL:J = 0x10b00000007L

.field public static final blacklist VISIBLE:J = 0x10800000003L


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

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
