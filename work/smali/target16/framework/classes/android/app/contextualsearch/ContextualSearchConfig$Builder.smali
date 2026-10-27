.class public final Landroid/app/contextualsearch/ContextualSearchConfig$Builder;
.super Ljava/lang/Object;
.source "ContextualSearchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contextualsearch/ContextualSearchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDisplayId:I

.field private final blacklist mIntentExtras:Landroid/os/Bundle;

.field private blacklist mSourceBounds:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayId(Landroid/app/contextualsearch/ContextualSearchConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mDisplayId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntentExtras(Landroid/app/contextualsearch/ContextualSearchConfig$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mIntentExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSourceBounds(Landroid/app/contextualsearch/ContextualSearchConfig$Builder;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mSourceBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mDisplayId:I

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mSourceBounds:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mIntentExtras:Landroid/os/Bundle;

    .line 138
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/contextualsearch/ContextualSearchConfig;)V
    .registers 3

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/app/contextualsearch/ContextualSearchConfig;->getDisplayId()I

    move-result v0

    iput v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mDisplayId:I

    .line 148
    invoke-virtual {p1}, Landroid/app/contextualsearch/ContextualSearchConfig;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mSourceBounds:Landroid/graphics/Rect;

    .line 149
    invoke-virtual {p1}, Landroid/app/contextualsearch/ContextualSearchConfig;->getIntentExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mIntentExtras:Landroid/os/Bundle;

    .line 150
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/contextualsearch/ContextualSearchConfig;
    .registers 3

    .line 205
    new-instance v0, Landroid/app/contextualsearch/ContextualSearchConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/contextualsearch/ContextualSearchConfig;-><init>(Landroid/app/contextualsearch/ContextualSearchConfig$Builder;Landroid/app/contextualsearch/ContextualSearchConfig-IA;)V

    return-object v0
.end method

.method public whitelist setDisplayId(I)Landroid/app/contextualsearch/ContextualSearchConfig$Builder;
    .registers 2

    .line 164
    iput p1, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mDisplayId:I

    .line 165
    return-object p0
.end method

.method public whitelist setIntentExtras(Landroid/os/Bundle;)Landroid/app/contextualsearch/ContextualSearchConfig$Builder;
    .registers 3

    .line 191
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 192
    if-eqz p1, :cond_c

    .line 193
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 195
    :cond_c
    return-object p0
.end method

.method public whitelist setSourceBounds(Landroid/graphics/Rect;)Landroid/app/contextualsearch/ContextualSearchConfig$Builder;
    .registers 3

    .line 177
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v0

    :goto_a
    iput-object p1, p0, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->mSourceBounds:Landroid/graphics/Rect;

    .line 178
    return-object p0
.end method
