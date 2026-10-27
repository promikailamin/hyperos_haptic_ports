.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$ConfigurationContainerProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConfigurationContainerProto"
.end annotation


# static fields
.field public static final blacklist FULL_CONFIGURATION:J = 0x10b00000002L

.field public static final blacklist MERGED_OVERRIDE_CONFIGURATION:J = 0x10b00000003L

.field public static final blacklist OVERRIDE_CONFIGURATION:J = 0x10b00000001L


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

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
