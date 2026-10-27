.class public Lcom/android/server/am/BroadcastConstants$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BroadcastConstants.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BroadcastConstants;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;)V
    .registers 3

    .line 317
    iput-object p1, p0, Lcom/android/server/am/BroadcastConstants$SettingsObserver;->this$0:Lcom/android/server/am/BroadcastConstants;

    .line 318
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 323
    iget-object p0, p0, Lcom/android/server/am/BroadcastConstants$SettingsObserver;->this$0:Lcom/android/server/am/BroadcastConstants;

    invoke-static {p0}, Lcom/android/server/am/BroadcastConstants;->-$$Nest$mupdateSettingsConstants(Lcom/android/server/am/BroadcastConstants;)V

    return-void
.end method
