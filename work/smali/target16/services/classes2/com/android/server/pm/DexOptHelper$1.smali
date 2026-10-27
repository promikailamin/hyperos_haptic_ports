.class public Lcom/android/server/pm/DexOptHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "DexOptHelper.java"


# instance fields
.field public final synthetic val$artManager:Lcom/android/server/art/ArtManagerLocal;


# direct methods
.method public constructor <init>(Lcom/android/server/art/ArtManagerLocal;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$1;->val$artManager:Lcom/android/server/art/ArtManagerLocal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 295
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 296
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$1;->val$artManager:Lcom/android/server/art/ArtManagerLocal;

    invoke-virtual {p0}, Lcom/android/server/art/ArtManagerLocal;->scheduleBackgroundDexoptJob()I

    return-void
.end method
