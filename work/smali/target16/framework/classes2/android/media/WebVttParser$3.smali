.class Landroid/media/WebVttParser$3;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final synthetic blacklist this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 716
    const-class v0, Landroid/media/WebVttParser;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/WebVttParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 716
    iput-object p1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)V
    .registers 5

    .line 795
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 796
    iget-object p1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseCueId(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    goto :goto_66

    .line 797
    :cond_12
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 798
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v1}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseCueTime(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    .line 799
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmPhase(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    goto :goto_66

    .line 801
    :cond_2f
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 802
    if-lez v0, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_46

    .line 803
    :cond_3f
    iget-object v1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v2, "meta data header has invalid format"

    invoke-static {v1, v2, p1}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_46
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 806
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 808
    const-string v0, "Region"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 809
    invoke-virtual {p0, p1}, Landroid/media/WebVttParser$3;->parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;

    move-result-object p1

    .line 810
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmListener(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/WebVttCueListener;->onRegionParsed(Landroid/media/TextTrackRegion;)V

    .line 813
    :cond_66
    :goto_66
    return-void
.end method

.method blacklist parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;
    .registers 15

    .line 718
    new-instance v1, Landroid/media/TextTrackRegion;

    invoke-direct {v1}, Landroid/media/TextTrackRegion;-><init>()V

    .line 719
    const-string v0, " +"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_10e

    aget-object v0, p1, v4

    .line 720
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 721
    if-lez v5, :cond_10a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_24

    .line 722
    goto/16 :goto_10a

    .line 725
    :cond_24
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 726
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 727
    const-string v0, "id"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 728
    iput-object v12, v1, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    goto/16 :goto_10a

    .line 729
    :cond_3a
    const-string v0, "width"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 731
    :try_start_42
    invoke-static {v12}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/media/TextTrackRegion;->mWidth:F
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_48} :catch_49

    goto :goto_57

    .line 732
    :catch_49
    move-exception v0

    .line 733
    iget-object v7, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    .line 734
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 733
    const-string v8, "region setting"

    const-string v10, "has invalid value"

    invoke-static/range {v7 .. v12}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :goto_57
    goto/16 :goto_10a

    .line 736
    :cond_59
    const-string v0, "lines"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "region setting"

    if-eqz v5, :cond_85

    .line 737
    const-string v5, ".*[^0-9].*"

    invoke-virtual {v12, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 738
    iget-object v5, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v6, "contains an invalid character"

    invoke-static {v5, v0, v9, v6, v12}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10a

    .line 741
    :cond_74
    :try_start_74
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/media/TextTrackRegion;->mLines:I
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_7a} :catch_7b

    .line 742
    goto :goto_83

    .line 743
    :catch_7b
    move-exception v0

    .line 744
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v5, "is not numeric"

    invoke-static {v0, v6, v9, v5, v12}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :goto_83
    goto/16 :goto_10a

    .line 747
    :cond_85
    const-string v0, "regionanchor"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 748
    const-string v0, "viewportanchor"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    goto :goto_b4

    .line 781
    :cond_96
    const-string v0, "scroll"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 782
    const-string v0, "up"

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 783
    const/16 v0, 0x12d

    iput v0, v1, Landroid/media/TextTrackRegion;->mScrollValue:I

    goto :goto_10a

    .line 786
    :cond_ab
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v5, "has invalid value"

    invoke-static {v0, v6, v9, v5, v12}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10a

    .line 781
    :cond_b3
    :goto_b3
    goto :goto_10a

    .line 749
    :cond_b4
    :goto_b4
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 750
    if-gez v0, :cond_c4

    .line 751
    iget-object v0, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string v5, "contains no comma"

    invoke-static {v0, v6, v9, v5, v12}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    goto :goto_10a

    .line 755
    :cond_c4
    move-object v5, v12

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 756
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 760
    :try_start_cf
    invoke-static {v12}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v0
    :try_end_d3
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_d3} :catch_fb

    .line 765
    nop

    .line 767
    :try_start_d4
    invoke-static {v5}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v5
    :try_end_d8
    .catch Ljava/lang/NumberFormatException; {:try_start_d4 .. :try_end_d8} :catch_eb

    .line 772
    nop

    .line 774
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x72

    if-ne v6, v7, :cond_e6

    .line 775
    iput v0, v1, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 776
    iput v5, v1, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    goto :goto_b3

    .line 778
    :cond_e6
    iput v0, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 779
    iput v5, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    goto :goto_b3

    .line 768
    :catch_eb
    move-exception v0

    .line 769
    iget-object v7, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    .line 770
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 769
    const-string v8, "region setting"

    const-string v10, "has invalid y component"

    move-object v12, v5

    invoke-static/range {v7 .. v12}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    goto :goto_10a

    .line 761
    :catch_fb
    move-exception v0

    .line 762
    iget-object v7, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    .line 763
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 762
    const-string v8, "region setting"

    const-string v10, "has invalid x component"

    invoke-static/range {v7 .. v12}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    nop

    .line 719
    :cond_10a
    :goto_10a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    .line 790
    :cond_10e
    return-object v1
.end method
