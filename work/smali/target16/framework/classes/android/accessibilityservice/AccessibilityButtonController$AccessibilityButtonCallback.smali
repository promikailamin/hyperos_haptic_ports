.class public abstract Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
.super Ljava/lang/Object;
.source "AccessibilityButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AccessibilityButtonCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailabilityChanged(Landroid/accessibilityservice/AccessibilityButtonController;Z)V
    .registers 3

    .line 218
    return-void
.end method

.method public whitelist onClicked(Landroid/accessibilityservice/AccessibilityButtonController;)V
    .registers 2

    .line 204
    return-void
.end method
