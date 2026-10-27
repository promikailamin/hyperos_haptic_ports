.class public final Landroid/provider/SettingsHistory$Setting;
.super Ljava/lang/Object;
.source "SettingsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setting"
.end annotation


# instance fields
.field private blacklist defaultValue:Ljava/lang/String;

.field private blacklist name:Ljava/lang/String;

.field private blacklist packageName:Ljava/lang/String;

.field private blacklist timesTamp:J

.field private blacklist userId:I

.field private blacklist value:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdefaultValue(Landroid/provider/SettingsHistory$Setting;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/SettingsHistory$Setting;->defaultValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetname(Landroid/provider/SettingsHistory$Setting;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/SettingsHistory$Setting;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpackageName(Landroid/provider/SettingsHistory$Setting;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/SettingsHistory$Setting;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettimesTamp(Landroid/provider/SettingsHistory$Setting;)J
    .registers 3

    iget-wide v0, p0, Landroid/provider/SettingsHistory$Setting;->timesTamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuserId(Landroid/provider/SettingsHistory$Setting;)I
    .registers 1

    iget p0, p0, Landroid/provider/SettingsHistory$Setting;->userId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalue(Landroid/provider/SettingsHistory$Setting;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/SettingsHistory$Setting;->value:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputdefaultValue(Landroid/provider/SettingsHistory$Setting;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/provider/SettingsHistory$Setting;->defaultValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputname(Landroid/provider/SettingsHistory$Setting;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/provider/SettingsHistory$Setting;->name:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputpackageName(Landroid/provider/SettingsHistory$Setting;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/provider/SettingsHistory$Setting;->packageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputtimesTamp(Landroid/provider/SettingsHistory$Setting;J)V
    .registers 3

    iput-wide p1, p0, Landroid/provider/SettingsHistory$Setting;->timesTamp:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputuserId(Landroid/provider/SettingsHistory$Setting;I)V
    .registers 2

    iput p1, p0, Landroid/provider/SettingsHistory$Setting;->userId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputvalue(Landroid/provider/SettingsHistory$Setting;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/provider/SettingsHistory$Setting;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "timestamp"    # J
    .param p3, "userId"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "defaultValue"    # Ljava/lang/String;
    .param p7, "packageName"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Landroid/provider/SettingsHistory$Setting;->timesTamp:J

    .line 44
    iput p3, p0, Landroid/provider/SettingsHistory$Setting;->userId:I

    .line 45
    iput-object p4, p0, Landroid/provider/SettingsHistory$Setting;->name:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Landroid/provider/SettingsHistory$Setting;->value:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Landroid/provider/SettingsHistory$Setting;->defaultValue:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Landroid/provider/SettingsHistory$Setting;->packageName:Ljava/lang/String;

    .line 49
    return-void
.end method
