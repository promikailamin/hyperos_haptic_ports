.class public Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;
.super Ljava/lang/Object;
.source "FilterInfoInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/hybrid/hook/FilterInfoInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayInfo"
.end annotation


# instance fields
.field public blacklist icon:Landroid/graphics/drawable/Drawable;

.field public blacklist label:Ljava/lang/String;

.field public blacklist longClickIntent:Landroid/content/Intent;

.field public blacklist resolveInfo:Landroid/content/pm/ResolveInfo;

.field public blacklist resolvedIntent:Landroid/content/Intent;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/ResolveInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "resolvedIntent"    # Landroid/content/Intent;
    .param p5, "longClickIntent"    # Landroid/content/Intent;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 114
    iput-object p2, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 115
    iput-object p3, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;->label:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;->resolvedIntent:Landroid/content/Intent;

    .line 117
    iput-object p5, p0, Lcom/miui/hybrid/hook/FilterInfoInjector$DisplayInfo;->longClickIntent:Landroid/content/Intent;

    .line 118
    return-void
.end method
