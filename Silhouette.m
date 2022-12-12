%%%%% SILHOUETTE ANALYSIS %%%%%

eva = evalclusters(double(filteredGauss),'kmeans','silhouette','KList',1:10);

plot(2:10,eva.CriterionValues(1,2:10));
xlabel('Values of k')
ylabel('Silhouette Score')
