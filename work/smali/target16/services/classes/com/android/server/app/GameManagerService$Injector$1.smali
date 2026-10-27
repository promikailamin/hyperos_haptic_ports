.class public Lcom/android/server/app/GameManagerService$Injector$1;
.super Ljava/lang/Object;
.source "GameManagerService.java"

# interfaces
.implements Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService$Injector;)V
    .registers 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 210
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 3

    .line 215
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 220
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
