.class public final Lcom/android/server/dreams/DreamManagerService$DefaultInjector;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Lcom/android/server/dreams/DreamManagerService$Injector;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$DefaultInjector;->mContext:Landroid/content/Context;

    .line 1116
    iput-object p2, p0, Lcom/android/server/dreams/DreamManagerService$DefaultInjector;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 1

    .line 1121
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$DefaultInjector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDozeConfig()Landroid/hardware/display/AmbientDisplayConfiguration;
    .registers 2

    .line 1131
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getDreamController(Lcom/android/server/dreams/DreamController$Listener;)Lcom/android/server/dreams/DreamController;
    .registers 4

    .line 1136
    new-instance v0, Lcom/android/server/dreams/DreamController;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$DefaultInjector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$DefaultInjector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/dreams/DreamController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 1126
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$DefaultInjector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method
