.class public final Landroid/internal/perfetto/protos/Activityinfo$ActivityInfoProto;
.super Ljava/lang/Object;
.source "Activityinfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Activityinfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActivityInfoProto"
.end annotation


# static fields
.field public static final blacklist SCREEN_ORIENTATION_BEHIND:I = 0x3

.field public static final blacklist SCREEN_ORIENTATION_FULL_SENSOR:I = 0xa

.field public static final blacklist SCREEN_ORIENTATION_FULL_USER:I = 0xd

.field public static final blacklist SCREEN_ORIENTATION_LANDSCAPE:I = 0x0

.field public static final blacklist SCREEN_ORIENTATION_LOCKED:I = 0xe

.field public static final blacklist SCREEN_ORIENTATION_NOSENSOR:I = 0x5

.field public static final blacklist SCREEN_ORIENTATION_PORTRAIT:I = 0x1

.field public static final blacklist SCREEN_ORIENTATION_REVERSE_LANDSCAPE:I = 0x8

.field public static final blacklist SCREEN_ORIENTATION_REVERSE_PORTRAIT:I = 0x9

.field public static final blacklist SCREEN_ORIENTATION_SENSOR:I = 0x4

.field public static final blacklist SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field public static final blacklist SCREEN_ORIENTATION_SENSOR_PORTRAIT:I = 0x7

.field public static final blacklist SCREEN_ORIENTATION_UNSET:I = -0x2

.field public static final blacklist SCREEN_ORIENTATION_UNSPECIFIED:I = -0x1

.field public static final blacklist SCREEN_ORIENTATION_USER:I = 0x2

.field public static final blacklist SCREEN_ORIENTATION_USER_LANDSCAPE:I = 0xb

.field public static final blacklist SCREEN_ORIENTATION_USER_PORTRAIT:I = 0xc


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Activityinfo;)V
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
