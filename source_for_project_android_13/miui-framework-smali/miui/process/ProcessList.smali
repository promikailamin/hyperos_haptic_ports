.class public Lmiui/process/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field public static final blacklist BACKUP_APP_ADJ:I = 0x12c

.field public static final blacklist CACHED_APP_MAX_ADJ:I = 0x38a

.field public static final blacklist CACHED_APP_MIN_ADJ:I = 0x384

.field public static final blacklist FOREGROUND_APP_ADJ:I = 0x0

.field public static final blacklist HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field public static final blacklist HOME_APP_ADJ:I = 0x258

.field public static final blacklist INVALID_ADJ:I = -0x2710

.field public static final blacklist NATIVE_ADJ:I = -0x3e8

.field public static final blacklist PERCEPTIBLE_APP_ADJ:I = 0xc8

.field public static final blacklist PERSISTENT_PROC_ADJ:I = -0x320

.field public static final blacklist PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field public static final blacklist PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final blacklist SERVICE_ADJ:I = 0x1f4

.field public static final blacklist SERVICE_B_ADJ:I = 0x320

.field public static final blacklist SYSTEM_ADJ:I = -0x384

.field public static final blacklist UNKNOWN_ADJ:I = 0x3e9

.field public static final blacklist VISIBLE_APP_ADJ:I = 0x64

.field public static final blacklist VISIBLE_APP_LAYER_MAX:I = 0x63


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
