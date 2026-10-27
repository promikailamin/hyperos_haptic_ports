.class abstract Lmiui/imagefilters/BlendImageFilter$Blender;
.super Ljava/lang/Object;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/BlendImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Blender"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor blacklist <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/imagefilters/BlendImageFilter;

    .line 24
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$Blender;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist blendColor(II)I
.end method
