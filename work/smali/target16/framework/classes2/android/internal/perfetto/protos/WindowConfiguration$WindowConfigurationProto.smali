.class public final Landroid/internal/perfetto/protos/WindowConfiguration$WindowConfigurationProto;
.super Ljava/lang/Object;
.source "WindowConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/WindowConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WindowConfigurationProto"
.end annotation


# static fields
.field public static final blacklist ACTIVITY_TYPE:J = 0x10500000003L

.field public static final blacklist APP_BOUNDS:J = 0x10b00000001L

.field public static final blacklist BOUNDS:J = 0x10b00000004L

.field public static final blacklist MAX_BOUNDS:J = 0x10b00000005L

.field public static final blacklist WINDOWING_MODE:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/WindowConfiguration;)V
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
