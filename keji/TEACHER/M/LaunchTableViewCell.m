//
//  LaunchTableViewCell.m
//  keji
//
//  Created by 王旭 on 2020/12/30.
//

#import "LaunchTableViewCell.h"

@implementation LaunchTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.firstLabel = [[UILabel alloc] init];
        self.secondLabel = [[UILabel alloc] init];
        self.jumpImageView = [[UIImageView alloc] init];
        
        [self.contentView addSubview:self.firstLabel];
        [self.contentView addSubview:self.secondLabel];
        [self.contentView addSubview:self.jumpImageView];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.firstLabel.textColor = [UIColor blackColor];
    self.firstLabel.frame = CGRectMake(10, 10, 100, 30);
    self.firstLabel.font = [UIFont systemFontOfSize:17];
    
    self.secondLabel.frame = CGRectMake(120, 10, 190, 30);
    self.secondLabel.textAlignment = NSTextAlignmentRight;
    self.secondLabel.font = [UIFont systemFontOfSize:17];
    
    self.jumpImageView.frame = CGRectMake(310, 13, 25, 25);
    [self.jumpImageView setImage:[UIImage imageNamed:@"youjiantou.png"]];
}
@end
//图是由顶点的非空集合跟顶点之间边的集合
//G(V,E)
//无向边 无序偶(Vi,Vj)
//有向边(弧) 有序偶<Vi,Vj>
//简单图
//无向完全图 任意两个顶点之间都存在边 n*(n-1)/2
//有向完全图 任意两个顶点之间都存在方向相反的两条边 n*(n-1)
//稀疏图 稠密图 边数或者弧数少于n*logn为稀疏图 多于为稠密图
//边或者弧带有与他相关的数字 该数字成为权值 带有权值的图成为网
//子图 顶点被包含 边被包含
//邻接点 相关联 (无向图)
//度 顶点V的度是和V相关联的边的数目 TD(V）
//邻接到 邻接自 (有向图)
//入度 以V为头的弧的数目 ID(V)
//出度 以V为尾的弧的数目 OD(V)
//TD(V) = ID(V) + OD(V)
//路径 V1->V2的路径 path 如果是有向图，路径也是有向的
//路径的长度是路径上边或弧的数目 顶点不重复出现的路径成为简单路径
//一个顶点到另一个顶点的相同路径成为环或者回路
//回路或者环中顶点不重复出现的成为简单回路(简单环)
//无向图中 一个顶点到另一个顶点有路径 则V1到V2是连通的
//无向图中 任意两个顶点都是连通的时称为连通图
//无向图中 极大连通子图成为连通分量
//有向图 任意两个顶点之间都有路径称为强连通图
//强连通分量
